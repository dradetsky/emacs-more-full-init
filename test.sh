#!/bin/bash

debug() {
    emacs --no-init-file \
          --debug-init \
          -l init.el
}

normal() {
    emacs --no-init-file \
          -l init.el
}

if [ $# -eq 0 ] ; then
    debug
else
    normal
fi
