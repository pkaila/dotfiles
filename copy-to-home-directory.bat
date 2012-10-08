@echo off
xcopy /y vimrc %USERPROFILE%\_vimrc
xcopy /y /s vimfiles %USERPROFILE%\vimfiles
pause

