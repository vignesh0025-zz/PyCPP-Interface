#!/usr/bin/python3

import os
import sys

src = sys.argv[1]
des = sys.argv[2]

s_file_c = os.path.join('inc', src+'.h')
s_file_h = os.path.join('intf', src+'.c')

d_file_c = os.path.join('inc', des+'.h')
d_file_h = os.path.join('intf', des+'.c')

os.rename(s_file_c, d_file_c)
os.rename(s_file_h, d_file_h)
