@echo off
setlocal
title MyMusic
if not exist "node_modules" (
  echo Dependencies are not installed yet.
  echo Run build.bat once.
  pause
  exit /b 1
)
call npm start
