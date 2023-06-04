@echo off
for /f %%f in ('dir /b *.py') do (
    python "%%f"
    pause
    exit /b
)
pause