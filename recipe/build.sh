cargo build --release -v

# ignore any fails on license bundling
cargo-bundle-licenses --format yaml --output THIRDPARTY.yml || true
cargo-bundle-licenses --format yaml --output THIRDPARTY.yml || true

mkdir -vp ${PREFIX}/bin
if [ ! -z "${CARGO_BUILD_TARGET}" ]; then
    SOURCE_DIR="target/${CARGO_BUILD_TARGET}/release"
else
    SOURCE_DIR=target/release
fi

ls "${SOURCE_DIR}"
cp -v "${SOURCE_DIR}/whitebox_tools" ${PREFIX}/bin/ || exit 1;
chmod -v 755 ${PREFIX}/bin/whitebox_tools || exit 1;

cp $RECIPE_DIR/setup.py .
${PYTHON} -m pip install . -vv
#$PYTHON setup.py install --single-version-externally-managed --record=record.txt
