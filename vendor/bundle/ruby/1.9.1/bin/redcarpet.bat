@ECHO OFF
IF NOT "%~f0" == "~f0" GOTO :WinNT
@"ruby.exe" "C:/BitNami/redmine-2.5.1-1/apps/redmine/htdocs/vendor/bundle/ruby/1.9.1/bin/redcarpet" %1 %2 %3 %4 %5 %6 %7 %8 %9
GOTO :EOF
:WinNT
@"ruby.exe" "%~dpn0" %*
