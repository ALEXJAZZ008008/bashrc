#!/bin/bash

#Copyright University College London 2019
#Author: Alexander Whitehead, Institute of Nuclear Medicine, UCL
#For internal research only.

# User specific aliases and functions
function cd() {
    new_directory="$*";
    if [ $# -eq 0 ]; then 
        new_directory=${HOME};
    fi;
    builtin cd "${new_directory}" && ls
}

export CC=gcc
export CXX=g++
export EDITOR=nano

export PATH=~/XCAT:$PATH
export PATH=~/MATLAB/R2019b/bin:$PATH
export PATH=/usr/local/cuda-10.1/bin:$PATH

export LD_LIBRARY_PATH=/usr/local/cuda-10.1/lib64:$LD_LIBRARY_PATH

export PYTHONUNBUFFERED=1
export PYTHONPATH=~/Documents/SIRF-SuperBuild_install/python:$PYTHONPATH
export LD_LIBRARY_PATH=~/Documents/SIRF_SuperBuild_install/lib$LD_LIBRARY_PATH
source ~/Documents/SIRF-SuperBuild_install/bin/env_ccppetmr.sh
