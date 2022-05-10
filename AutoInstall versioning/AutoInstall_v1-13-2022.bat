
REM Script to Query Model from WMIC and begin silent driver installation

@echo off
    setlocal enableextensions disabledelayedexpansion

    for /f "tokens=2 delims==" %%a in (
        'wmic computersystem get model /value'
    ) do for /f "delims=" %%b in ("%%~a") do for %%m in (
        "model1" "model2" "model3" "model4"
    ) do if /i "%%~b"=="%%~m" (
        set "model=%%~m"
        goto start
    )

    echo un-compatible system
    goto :eof

:start
    echo Start of script for model [%model%]
cd d:\
cd Base Installs
cd firmware and drivers
cd Inspiron 13-5379-P69G
*.* -s 


