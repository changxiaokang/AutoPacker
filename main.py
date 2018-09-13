#!/usr/bin/python
#coding:utf-8

import os
import sys
import platform
import subprocess
import time
import logging

import readConfig

class ApkTest():

    def __init__(self):
        self.SrcSoSum = 0
        self.UpxSoSum = 0
        self.InitSoSum = 0

        self.rootDir = os.path.dirname(sys.argv[0])
        self.config = readConfig.getConfig()
        self.LogPath = os.path.join(self.rootDir, self.config["LogPath"])
        self.InputPath = os.path.join (self.rootDir, self.config["InputPath"])
        self.OutputPath = os.path.join(self.rootDir, self.config["OutputPath"])

        self.UpxName = os.path.join(self.rootDir, self.config["UtilsPath"], self.config["UpxName"])
        self.ApkToolPath = os.path.join(self.rootDir, self.config["UtilsPath"], self.config["ApkToolName"])
        self.AddInitName = os.path.join(self.rootDir, self.config["UtilsPath"], self.config["AddInitName"])
        self.LogFileName = os.path.join(self.LogPath, time.strftime("%Y-%m-%d.log",time.localtime(time.time())))

        self.SignPath = os.path.join(self.rootDir, self.config["UtilsPath"], self.config["SignName"])
        self.PubKeyPath = os.path.join(self.rootDir, self.config["UtilsPath"], self.config["PubKeyName"])
        self.PriKeyPath = os.path.join(self.rootDir, self.config["UtilsPath"], self.config["PriKeyName"])

        logging.basicConfig(level = logging.DEBUG, filename = self.LogFileName, filemode = 'a')

        console = logging.StreamHandler()
        console.setLevel(logging.INFO)

        formatter = logging.Formatter('%(message)s')
        console.setFormatter(formatter)

        logging.info("\r\n")
        logging.info(">>> Logging Start")
        logging.getLogger('').addHandler(console)


    def TraverseApk(self, path):
        listApk = []
        ext_name = ".apk"
        ext_len = len(ext_name)

        logging.info("\r\n")
        logging.info(">>> TraverseApk")

        for root, dirs, files in os.walk(path):
            for name in files:
                if name[-ext_len:] == ".apk":
                    logging.info(name)
                    listApk.append(os.path.join(root, name))

        return listApk


    def TraverseSo(self, path):
        listApk = []
        ext_name = ".so"
        ext_len = len(ext_name)

        logging.info("\r\n")
        logging.info(">>> TraverseSo")

        for root, dirs, files in os.walk(path):
            for file in files:
                if file[-ext_len:] == ext_name:
                    logging.info(file)
                    listApk.append(os.path.join(root, file))

        return listApk


    def TraverseFile(self, path):
        listApk = []
        ext_name = "De_"
        ext_len = len(ext_name)

        logging.info("\r\n")
        logging.info(">>> TraverseFile")

        for root, dirs, files in os.walk(path):
            for name in dirs:
                if name[:ext_len] == ext_name:
                    logging.info(name)
                    listApk.append(os.path.join(root, name))

        return listApk


    def Decompile(self, Mode, listApk):
        if len(Mode) == 0 or len(listApk) == 0:
            return False

        ext_name = ".apk"
        ext_len = len(ext_name)
        logging.info("\r\n")

        for list in listApk:
            if Mode == "d":
                OutPath = os.path.join(self.OutputPath, "De_" +  os.path.basename(list))
                cmd = "java -jar " + self.ApkToolPath + " d -r -f " + list + " -o " + OutPath[:-ext_len]
                logging.info("[Decompile] : %s" % cmd)

                try:
                    subprocess.check_call(cmd)
                except Exception as e:
                    logging.warning("Failed: %s" % e)

            elif Mode == 'b':
                OutPath = os.path.join(self.OutputPath, os.path.basename(list))
                cmd = "java -jar " + self.ApkToolPath + " b -d " + list + " -o " + OutPath + ext_name
                logging.info("[build] : %s" % cmd)

                try:
                    subprocess.check_call(cmd)
                except Exception as e:
                    logging.warning("Failed: %s" % e)


    def Signature(self, listApk):
        if len(listApk) == 0:
            return False

        ext_name = ".apk"
        ext_len = len(ext_name)
        logging.info("\r\n")

        for list in listApk:
            if list[-ext_len:] == ext_name:
                OutPath = os.path.join(os.path.dirname(list), "Sgn_" + os.path.basename(list))
                cmd = "java -jar " + self.SignPath + " " + self.PubKeyPath + " " + self.PriKeyPath + " " + list + " " + OutPath
                logging.info("[Signapk] : %s" % cmd)

                try:
                    subprocess.check_call(cmd)
                except Exception as e:
                    logging.warning("Failed: %s" % e)


    def AddInit(self, listSo):
        if len(listSo) == 0:
            return False

        ext_name = ".so"
        ext_len = len(ext_name)

        init_name = "_addinit.so"
        init_len = len(init_name)

        logging.info("\r\n")

        for list in listSo:
            if list[-ext_len:] == ext_name and list[-init_len:] != init_name :
                cmd = self.AddInitName + " " + list

                try:
                    subprocess.check_call(cmd)
                except Exception as e:
                    logging.warning("Failed: %s" % e)


    def UPXPacker(self, listSo):
        if len(listSo) == 0:
            return False

        ext_name = "_addinit.so"
        ext_len = len(ext_name)
        logging.info("\r\n")

        for list in listSo:
            if list[-ext_len:] == ext_name:
                OutPath = os.path.join(os.path.dirname(list), "UPX_" + os.path.basename(list))
                cmd = self.UpxName + " " + list + " -o " + OutPath
                try:
                    subprocess.check_call(cmd)
                except Exception as e:
                    logging.warning("Failed: %s" % e)


    def SuccessRate(self, listSo):
        if len(listSo) == 0:
            return False

        upx_name = "UPX_"
        upx_len = len(upx_name)

        init_name = "_addinit.so"
        init_len = len(init_name)

        for list in listSo:
            SoName = os.path.basename(list)
            if SoName[:upx_len] == upx_name:
                self.UpxSoSum += 1
            elif (SoName[-init_len:] == init_name) and \
                 (SoName[:upx_len] != upx_name):
                self.InitSoSum += 1
            else:
                self.SrcSoSum += 1

        logging.info("\r\n")

        logging.info("UpxSo : %s" % self.UpxSoSum)
        logging.info("AddInitSo : %s" % self.InitSoSum)
        logging.info("OriginalSO £º%s" % self.SrcSoSum)

        logging.info("\r\n")
        if self.SrcSoSum and self.InitSoSum:
            logging.info("AddInit success rate: %.1f%%" % ((float(self.InitSoSum)/float(self.SrcSoSum)) * 100))
            logging.info("Upxpackers success rate: %.1f%%" % (float(self.UpxSoSum)/float(self.InitSoSum) * 100))


    def ClearRename(self, listSo):
        if len(listSo) == 0:
            return False

        ext_name = ".so"
        ext_len = len(ext_name)

        upx_name = "UPX_"
        upx_len = len(upx_name)

        init_name = "_addinit.so"
        init_len = len(init_name)

        for list in listSo:
            SoName = os.path.basename(list)
            if SoName[:upx_len] == upx_name:
                Srcso = os.path.join(os.path.dirname(list), SoName[upx_len:-init_len] + ext_name)
                Initso = os.path.join(os.path.dirname(list), SoName[upx_len:])

                if os.path.exists(Srcso) and os.path.exists(Initso) and os.path.exists(list):
                    os.remove(Srcso)
                    os.remove(Initso)
                    os.rename(list, Srcso)


    def run(self):
        sysstr = platform.system()

        if sysstr == "Windows" :
            print "\r\n Works in Windows"
        elif sysstr == "Linux" :
            print ("\r\n Works in Linux")

        self.Decompile("d", self.TraverseApk(self.InputPath))

        self.AddInit(self.TraverseSo(self.OutputPath))

        self.UPXPacker(self.TraverseSo(self.OutputPath))

        self.SuccessRate(self.TraverseSo(self.OutputPath))

        self.ClearRename(self.TraverseSo(self.OutputPath))

        self.Decompile("b", self.TraverseFile(self.OutputPath))

        self.Signature(self.TraverseApk(self.OutputPath))


if __name__ == "__main__":
    at = ApkTest()
    at.run()
    sys.exit(0)

