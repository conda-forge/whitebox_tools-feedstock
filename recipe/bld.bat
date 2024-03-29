cargo build --release -p whitebox_tools
cargo-bundle-licenses --format yaml --output THIRDPARTY.yml >nul

copy "%RECIPE_DIR%\setup.py" .
copy "target\release\whitebox_tools.exe" "%LIBRARY_BIN%"

%PYTHON% setup.py install --single-version-externally-managed --record=record.txt

if errorlevel 1 exit 1
