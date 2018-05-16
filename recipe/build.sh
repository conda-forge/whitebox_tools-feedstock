#!/bin/bash

mkdir -vp ${PREFIX}/bin;
cp -v WBT/whitebox_tools ${PREFIX}/bin/ || exit 1;
chmod -v 755 ${PREFIX}/bin/whitebox_tools || exit 1;

cp $RECIPE_DIR/setup.py $SRC_DIR/WBT/
cp $SRC_DIR/WBT/LICENSE.txt .
cd $SRC_DIR/WBT

$PYTHON setup.py install --single-version-externally-managed --record=record.txt
