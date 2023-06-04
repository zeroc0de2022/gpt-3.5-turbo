@echo off

set pythonUrl=https://www.python.org/ftp/python/3.11.3/python-3.11.3-amd64.exe
set pythonInstaller=python-3.11.3-amd64.exe

rem Загрузка установочного файла Python
echo Загрузка установочного файла Python...
curl -o "%pythonInstaller%" "%pythonUrl%" 2>nul
if %errorlevel% neq 0 (
    echo Ошибка загрузки установочного файла Python.
    exit /b
)

rem Установка Python
echo Установка Python...
start /wait "" "%pythonInstaller%" /quiet InstallAllUsers=1 PrependPath=1
if %errorlevel% neq 0 (
    echo Ошибка установки Python.
    exit /b
)

rem Удаление установочного файла
echo Удаление установочного файла...
del "%pythonInstaller%"
