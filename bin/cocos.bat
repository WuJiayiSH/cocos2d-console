@echo off
echo Looking for Python 2 in PATH...
SETLOCAL ENABLEDELAYEDEXPANSION
for /f "delims=" %%p in ('where python') do (
    "%%p" -c "import sys;exit(sys.version_info.major>2)"
    if !ERRORLEVEL! == 0 set PYTHON=%%p
)

"%PYTHON%" "%~dp0/cocos.py" %*