copy "%RECIPE_DIR%\setup.py" "%SRC_DIR%\"
copy "%SRC_DIR%\WBT\*"  "%SRC_DIR%\"
copy "%SRC_DIR%\whitebox_tools.exe" "%LIBRARY_BIN%"

cd %SRC_DIR%

$PYTHON setup.py install --single-version-externally-managed --record=record.txt

if errorlevel 1 exit 1
