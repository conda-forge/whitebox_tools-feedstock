copy "%RECIPE_DIR%\setup.py" .
copy "%SRC_DIR%\whitebox_tools.exe" "%LIBRARY_BIN%"

%PYTHON% setup.py install --single-version-externally-managed --record=record.txt

if errorlevel 1 exit 1
