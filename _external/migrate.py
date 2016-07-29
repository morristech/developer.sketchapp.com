#!/usr/bin/env python
# -*- coding: utf8 -*-

# --------------------------------------------------------------------------
#  Copyright 2016 Bohemian Coding. All rights reserved.
# --------------------------------------------------------------------------

import sys
import os
import shutil
import json

def check_arguments():
    if len(sys.argv) != 2:
        print "Usage: {0} <plugin-path>.".format(os.path.basename(sys.argv[0]))
        exit(1)



def read_plugin(plugin):
    with open(plugin, 'r') as file:
        text = file.read()
        return text


def convert_plugin(plugin, source):
    print "Converting {0}".format(plugin)

    (path, nameAndExt) = os.path.split(plugin)
    (name, ext) = os.path.splitext(nameAndExt)
    converted = os.path.join(path, "{0}-converted{1}".format(name, ext))

    if os.path.exists(converted):
        shutil.rmtree(converted)

    sketchFolderPath = os.path.join(converted, 'Content','Sketch')
    os.makedirs(sketchFolderPath)

    description = ""
    author = os.getenv('USER')
    company = "{0}s-plugins".format(author)
    email = "{0}@{1}.com".format(author, company)
    identifier = "com.{0}.{1}".format(company, name)
    home = "https:/github.com/{0}/{1}".format(company, name)

    manifest = {
        "name": name,
        "description": description,
        "author": author,
        "authorEmail": email,
        "version": "2.0",
        "identifier": identifier,
        "homepage": home,
        "compatibleVersion": 39,
        "commands": [{
            "identifier": "svgo",
            "handler": "___svgo_run_handler_",
            "script": "plugin.js",
            "name": "About SVGO Compressor",
            "handlers": {
                "run": "___svgo_run_handler_",
                "actions": {
                    "ExportSlices": "___svgo_run_handler_"
                }
            }
        }],
    }

    with open(os.path.join(sketchFolderPath, 'manifest.json'), 'w') as file:
        file.write(json.dumps(manifest, indent = 2))



def main():
    check_arguments()
    path = sys.argv[1]
    source = read_plugin(path)
    convert_plugin(path, source)


main()
