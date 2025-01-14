@echo on

REM Clear the tmp directory
if exist tmp (
    rd /s /q tmp
)
mkdir tmp

REM try twice!
if exist tmp (
    rd /s /q tmp
)
mkdir tmp

REM Build pdf
xelatex -shell-escape report.tex
biber report
makeglossaries report
xelatex -shell-escape report.tex
xelatex -shell-escape report.tex

REM Get the current date and time
for /f "tokens=2 delims==" %%i in ('"wmic os get localdatetime /value"') do set datetime=%%i

REM Extract the date and time components
set year=%datetime:~0,4%
set month=%datetime:~4,2%
set day=%datetime:~6,2%
set hour=%datetime:~8,2%
set minute=%datetime:~10,2%

REM Create the new filename
set newfilename=report_%year%-%month%-%day%_%hour%%minute%.pdf

if not exist output (
    mkdir output
)

REM Move and rename the report.pdf
move report.pdf output\%newfilename%



start output\%newfilename%