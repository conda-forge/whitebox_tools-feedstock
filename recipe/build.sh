#!/bin/bash

unamestr=`uname`
if [[ "$unamestr" == 'Darwin' ]]; then
    mv WBT/* .
fi

mkdir -vp ${PREFIX}/bin;
cp -v whitebox_tools ${PREFIX}/bin/ || exit 1;
chmod -v 755 ${PREFIX}/bin/whitebox_tools || exit 1;

cp $RECIPE_DIR/setup.py $SRC_DIR/
cd $SRC_DIR

$PYTHON setup.py install --single-version-externally-managed --record=record.txt
