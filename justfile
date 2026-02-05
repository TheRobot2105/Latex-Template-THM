set working-directory := 'Source'
input := "report"
outputdir := "./output/"
outputdirwin := "output"

[linux]
build output = "report":
    git clean -Xf

    xelatex  -shell-escape {{input}}.tex
    biber  {{input}}
    makeglossaries {{input}}
    xelatex  -shell-escape {{input}}.tex
    xelatex  -shell-escape {{input}}.tex
    mkdir -p {{outputdir}}
    cp {{input}}.pdf {{outputdir}}/{{output}}_{{datetime("%Y-%m-%dT%H_%M_%S")}}.pdf
    git clean -Xf


set windows-shell := ["powershell.exe", "-NoLogo", "-Command"]
[windows]
build output = "report":
    git clean -Xf

    xelatex  -shell-escape {{input}}.tex
    biber  {{input}}
    makeglossaries {{input}}
    xelatex  -shell-escape {{input}}.tex
    xelatex  -shell-escape {{input}}.tex
    if (Test-Path -Path {{outputdirwin}}){} else {mkdir {{outputdirwin}}}
    copy "{{input}}.pdf" "{{outputdirwin}}\{{output}}_{{datetime("%Y-%m-%dT%H_%M_%S")}}.pdf"
    git clean -Xf