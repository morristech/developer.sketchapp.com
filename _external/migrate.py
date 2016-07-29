#!/usr/bin/env python
# -*- coding: utf8 -*-

# --------------------------------------------------------------------------
#  Copyright 2016 Bohemian Coding. All rights reserved.
# --------------------------------------------------------------------------

import sys
import os
import shutil

def check_arguments():
    if len(sys.argv) != 2:
        print "Usage: {0} <plugin-path>.".format(os.path.basename(sys.argv[0]))
        exit(1)



def read_plugin(plugin):
    with open(plugin, 'r') as file:
        text = file.read()
        return text


def convert_plugin(plugin):
    print "Converting {0}".format(plugin)

    (path, nameAndExt) = os.path.split(plugin)
    (name, ext) = os.path.splitext(nameAndExt)
    converted = os.path.join(path, "{0}-converted{1}".format(name, ext))

    if os.path.exists(converted):
        shutil.rmtree(converted)

    os.makedirs(os.path.join(converted, 'Content','Sketch'))


def main():
    check_arguments()
    path = sys.argv[1]
    source = read_plugin(path)
    print source
    convert_plugin(path)


main()
