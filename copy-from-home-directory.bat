@echo off
xcopy /y %USERPROFILE%\_vimrc vimrc 
xcopy /y /s %USERPROFILE%\vimfiles vimfiles
pause

