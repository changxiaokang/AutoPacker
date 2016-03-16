# coding:utf-8

import os
import platform
import xml.dom.minidom


def getCurrentScriptPath():
    currentPyFilePath = os.path.split(os.path.realpath(__file__))[0]
    return currentPyFilePath

def getConfig():
    config = {}
    sysstr = platform.system()

    xml_path = os.path.join(getCurrentScriptPath(), "config.xml")
    root = xml.dom.minidom.parse(xml_path)
    xml_root = root.documentElement
    nodes = xml_root.getElementsByTagName('data')

    for node in nodes:
        config[node.getAttribute('name')] = node.getAttribute('value')

    return config
