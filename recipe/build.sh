cargo build --release -v

cargo install whitebox_lidar

cp $RECIPE_DIR/setup.py .
$PYTHON setup.py install --single-version-externally-managed --record=record.txt
