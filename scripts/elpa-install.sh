#!/bin/bash
#
# install elpa packages in batch mode.
#
# the packages to be installed are in the list bound to the var
# `init:batch-pkg-list` in the file `lisp/pkgs.el`.

this_dir=$(dirname ${BASH_SOURCE[0]})

pushd $this_dir/..

emacs -Q --batch -l batch-init.el -l lisp/pkgs.el --eval '(init:batch-add-pkgs)'

popd
