@echo off
Title %~nx0
set /p image=Import image file: 
set /p audio=Import audio file: 
set /p videoOutput=Export video output name: 
echo.

@REM ========== script... ==========
ffmpeg -loop 1 -framerate 1 -i %image% -i %audio% -shortest %videoOutput%.mp4
@REM ========== script. ==========
echo.
echo.
echo %~nx0
echo.
echo.
pause
