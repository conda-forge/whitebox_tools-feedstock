copy whitebox_tools.exe "%LIBRARY_BIN%"

copy %RECIPE_DIR%\setup.py %SRC_DIR%\WBT\
copy %SRC_DIR%\WBT\LICENSE.txt .
cd %SRC_DIR%\WBT

$PYTHON setup.py install --single-version-externally-managed --record=record.txt

if errorlevel 1 exit 1
