#!/usr/bin/env python3

import argparse
import io
import unicodedata

import bidi.algorithm
from PIL import Image

#
# command line arguments
#
arg_parser = argparse.ArgumentParser('''Creates tesseract WordStr box files for given (line) image text pairs''')
# Image file
arg_parser.add_argument('-i', '--image', nargs='?', metavar='IMAGE', help='Image file', required=True)

args = arg_parser.parse_args()

#
# main
#

tiffile = args.image
last_char = len(tiffile) - 4
filename = tiffile[:last_char]

# load image
with open(args.image, "rb") as f:
    im = Image.open(f)
    width, height = im.size

# load gt
with io.open(filename + ".gt.txt", "r", encoding='utf-8') as f:
    lines = f.read().strip().split('\n')
    if len(lines) != 1:
        raise ValueError("ERROR: %s: Ground truth text file should contain exactly one line, not %s" % (args.txt, len(lines)))
    line = unicodedata.normalize('NFC', lines[0].strip())

# create WordStr line boxes for Indic & RTL
if line:
    line = bidi.algorithm.get_display(line)
    l1 = (f"WordStr 0 0 {width} {height} 0 #{line}\n")
    l2 = (f"\t 0 0 {width} {height} 0")

with open(filename + ".box", "w") as box:
    box.write(l1)
    box.write(l2)
