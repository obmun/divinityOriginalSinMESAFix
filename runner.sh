#!/bin/sh

export allow_glsl_extension_directive_midshader=true
export LD_PRELOAD=/home/obmun/src/divos-hack.so
export LD_LIBRARY_PATH="."
./EoCApp
