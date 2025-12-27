@echo off

set SOURCE=%~dp0algebra-two
set DEST=%~dp0algebra-two-sync

robocopy "%SOURCE%" "%DEST%" *.pdf *.tex ^
  /E ^
  /MIR ^
  /R:3 ^
  /W:5 ^
  /Z ^
  /NFL /NDL

exit /b %ERRORLEVEL%