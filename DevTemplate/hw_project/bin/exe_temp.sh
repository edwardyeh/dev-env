#!/bin/bash
## +FHDR=======================================================================
## Copyright (c) 2020 Hsin-Hsien Yeh (Edward Yeh).
## All rights reserved.
## ----------------------------------------------------------------------------
## Filename         : exe_temp.sh
## File Description : 
## ----------------------------------------------------------------------------
## Author           : Edward Yeh
## Created On       : Sun 13 Sep 2020 10:44:04 PM CST
## Format           : Shell script
## ----------------------------------------------------------------------------
## Reuse Issues     : 
## Release History  : 
## -FHDR=======================================================================
alias acalc='function func { awk "BEGIN{ print $* }"; }; func'

# ========================================
# User Setting
# ========================================
WORK_ROOT="../"

# ========================================
# Preprocess
# ========================================
cd $WORK_ROOT
source bin/setup_env.sh

if ! [ "$?" ]; then
    echo "[ERROR] Source setup_env.sh fail."
    cd - &> /dev/null
    exit 1
else
    echo "[INFO] Source setup_env.sh pass."
    cd - &> /dev/null
fi

# ========================================
# Script Description
# ========================================
