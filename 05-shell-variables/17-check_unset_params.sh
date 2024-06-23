#!/usr/bin/env bash

# cookbook filename: check_unset_params
#

USAGE='usage: myscript scratchdir sourcefile conversion'
FILE_DIR=${1:?'Error. You must supply a scratch directory.'}
FILE_SRC=${2:?'Error.You must supply a source file.'}
CVT_TYPE=${3:?"Error. $USAGE"}

echo 'All good :)'
echo "scratch directory: $FILE_DIR"
echo "source file: $FILE_SRC"
echo "conversion: $CVT_TYPE"

exit 0
