cargo build --release -p whitebox_tools
cargo-bundle-licenses --format yaml --output THIRDPARTY.yml >nul

copy "%RECIPE_DIR%\setup.py" .
if defined CARGO_BUILD_TARGET (
    set "SOURCE_DIR=target\%CARGO_BUILD_TARGET%\release"
) else (
    set "SOURCE_DIR=target\release"
)

if not exist "%LIBRARY_BIN%" mkdir "%LIBRARY_BIN%"
copy "%SOURCE_DIR%\whitebox_tools.exe" "%LIBRARY_BIN%\whitebox_tools.exe"
if errorlevel 1 exit 1

%PYTHON% setup.py install --single-version-externally-managed --record=record.txt

if errorlevel 1 exit 1
