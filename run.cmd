@echo off
setlocal
cd /d "%~dp0"
set "HSP_DIR=C:\hsp37"
if not exist "%HSP_DIR%\hspcmp.exe" (
  echo Edit HSP_DIR in run.cmd to point to HSP 3.7.
  pause
  exit /b 1
)
"%HSP_DIR%\hspcmp.exe" --compath="%HSP_DIR%\common\" -d -omain.ax main.hsp
if errorlevel 1 (
  pause
  exit /b 1
)
"%HSP_DIR%\hsp3dish.exe" main.ax
