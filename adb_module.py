__author__ = 'XK'

# -*- coding:utf-8 -*-

'''
Created on 2014-12-12

@author: leon
'''

import os
import sys
import time
import shutil
import ass_config

import globalValues


class AdbModule():
    # adb instll
    def install(self, apk_file):
        if not os.path.exists(apk_file):
            return False

        ret = self.adb("install -r \""+apk_file+"\"")
        print(ret)
        if ret.find("Success")<0 and ret.find("INSTALL_FAILED_ALREADY_EXISTS")<0:
            print(self.i18n("°²×°Ê§°Ü"))
            return False
        return True

    # adb uninstall
    def uninstall(self, apk):
        return self.adb("uninstall "+apk)

    # aapt package
    def get_package_info(self):
        if self.report.apk_info=='':
            self.report.apk_info = self.do_cmd(ass_config.cmd_aapt+" d badging \""+self.apk_file+"\"")

        package = mid_str(self.report.apk_info, "package: name='", "'")
        version = mid_str(self.report.apk_info, "versionName='", "'")
        label = mid_str(self.report.apk_info, "application-label:'", "'")
        return (package, version, label)

    # apktool build
    def build_apk(self, dest):
        try:
            self.do_cmd(ass_config.cmd_apktool+" b -a \""+ass_config.cmd_aapt+"\" "+self.apktool_src_dst(self.smali_dir, self.apk_file+".tmp" ))
        except Exception as e:
            print e
        if os.path.exists(self.apk_file+".tmp"):
            self.do_cmd(ass_config.cmd_sign+" "+q(self.apk_file+".tmp")+" "+q(dest))


    def get_launchable_activity(self):
        return mid_str(self.get_package_info(), "launchable-activity: name='", "'")


    def get_manifest(self, apk):
        axml = os.path.join(self.smali_dir, "AndroidManifest.xml")
        return self.do_cmd(ass_config.cmd_axml+" "+q(axml))


    def do_cmd(self, cmdline, print_out=True, timeout=0):
        print(cmdline)
        try:
            p=subprocess.Popen(cmdline, bufsize=0, shell=True, universal_newlines=True, stdin=subprocess.PIPE,stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
        except Exception as e:
            print cmdline

        if timeout>0:
            t = Timer(timeout, to_kill(p))
            t.start()
        out = ''
        err = ''
        try:
            out,err = p.communicate()
        except:
            out = ''
            err = ''

        if print_out:
            print(out)

        if timeout>0:
            t.cancel()

        return out

    def connect_adb(self):
        if len(ass_config.adb_server)>0:
            self.do_cmd(ass_config.cmd_adb+" connect \""+ass_config.adb_server+"\"")

    def adb(self, cmd, timeout=0):
        adbs = " "
        if len(ass_config.adb_server)>0:
            adbs = " -s "+q(ass_config.adb_server)+" "

        return self.do_cmd(ass_config.cmd_adb+adbs+cmd, True, timeout)

    def run_cap(self, apk, apk_file, activity, step, first_uninstall=False):
        if first_uninstall:
            self.uninstall(apk)
        self.install(apk_file)
        self.start_apk(apk, activity)
        sleep(12)
        self.module_mFocusedActivity=self.adb("shell dumpsys activity activities | grep mFocusedActivity")
        self.screencap(step)
        self.uninstall(apk)
        return self.module_mFocusedActivity

    def start_apk(self, apk, activity):
        self.adb("shell am start "+apk+"/"+activity)

    def get_screencap_file(self, file):
        return "%d_%d_%d_%d.png" % file

    def screnncap_one(self):
        n = datetime.now()
        sf = (n.hour, n.minute, n.second, n.microsecond)
        self.adb("shell /system/bin/screencap -p /data/local/tmp/"+self.get_screencap_file(sf))
        return sf

    def screencap(self, step):
        self.adb("shell /system/bin/screencap -p /data/local/tmp/screenshot.png")
        self.adb("pull /data/local/tmp/screenshot.png \""+self.apk_file+"_"+step+".png\"")


    def run(self):
        if not os.path.exists(self.apk_file):
            return False
        self.md5_sha1_rsa()

        (p,v,l) = self.get_package_base_info()
        self.report.report.basic.packageName = p
        self.report.report.basic.appVersion = v
        self.report.report.basic.appName = l

        return True

    def main(self):
        super(AssModule, self).main()
        if self.print_report and hasattr(self, "report"):
            print(self.report.getReport())

    def Decompile(self, Mode, ApkPath):
        OutPath = os.path.join(os.path.dirname(ApkPath), "test")

        if Mode == 'd':
            os.system(ass_config.cmd_apktool + " d -r -f " + ApkPath + " -o " + os.path.join(OutPath, os.path.basename(self.apk_file)[:-4]))
        elif Mode == 'b':
            if not os.path.exists(OutPath):
                os.mkdir(OutPath)

            os.system(ass_config.cmd_apktool + " b " + os.path.join(OutPath, os.path.basename(self.apk_file)[:-4]) )
        else :
            return False


    def dex2smali(self, args, attr = False):
        # split args
        listArg = args.split(' ')
        newArgs = ' ' + " ".join(sorted(listArg))
        new_Args = "_" + "_".join(sorted(listArg))
        # Traversal dir find args file
        bFind = False
        Decpath = os.path.dirname(self.apk_file)

        for obj in os.listdir(Decpath):
            if os.path.isdir(Decpath + "/" + obj):
                if obj == (os.path.basename(self.apk_file) + new_Args):
                    bFind = True

        if not bFind:
            self.do_cmd(ass_config.cmd_apktool + " d" + newArgs + ' ' + \
                        self.apktool_src_dst(self.apk_file, self.apk_file + new_Args))

        if not attr:
            self.smali_dir = self.apk_file + new_Args
        else:
            if os.path.exists(Decpath + '/tmp/'):
                shutil.rmtree(Decpath + '/tmp/', True)

            if not os.path.exists(self.apk_file + new_Args):
                print "Error:not find " + self.apk_file + new_Args
                os.makedirs(self.apk_file + new_Args)

            shutil.copytree(self.apk_file + new_Args, Decpath + '/tmp/')
            self.smali_dir = Decpath + '/tmp/'


if __name__=="__main__":
    AdbModule().main()
