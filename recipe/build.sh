cargo build --release -v

cargo install --root ${PREFIX} --path .

cp $RECIPE_DIR/setup.py .
$PYTHON setup.py install --single-version-externally-managed --record=record.txt
