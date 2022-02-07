cargo build --release -v

mkdir -vp ${PREFIX}/bin;
ls -al target
echo "ls target"
ls -al ./target/whitebox-tools-app/src

cp -v target/release/whitebox-tools-app ${PREFIX}/bin/ || exit 1;
chmod -v 755 ${PREFIX}/bin/whitebox-tools-app || exit 1;

cp $RECIPE_DIR/setup.py .
$PYTHON setup.py install --single-version-externally-managed --record=record.txt
