# Latex Template für StudiumPlus-Studenten an der THM

Dieses Template beinhaltet eine Grundstruktur die möglichst nahe an den wissenschaftlichen Richtlinien der ZDH (Wissenschaftliches Zentrum Dualer Hochschulstudien, Studium Plus) and der THM. Es baut auf [diesem Template](https://www.oxfordechoes.com/oxford-thesis-template/) auf, der im Original für die Oxford Universität gedacht war und schon mehrfach angepasst wurde. Das Deckblatt der THM wurde von einer mir unbekannten Person erstellt. Alle weiteren Personen die Änderungen vorgenommen haben sind in der License-Datei aufgeführt.

## Hinweise
- Es wurden nicht alles auf Deutsch übersetzt, das meistes sollte auch so verständlich sein.
- Die Erzeugung ist auf Windows und auf Linux möglich. Für Windows die `buildPDF.bat` Datei ausführen und für Linux die `buildPDFLinux.sh` Datei ausführen.

## Nutzung dieses Template

- Zuerst muss eine Tex-Distribution installiert werden wie beispielsweise [Miktex](https://miktex.org/) für Windows oder [Texlive](https://tug.org/texlive/) für Linux und ein LaTex-editor wie [TeXstudio](https://www.texstudio.org/) 
- Dann das Repository klonen und den eigenen Namen und Adresse im Deckblatt, im Sperrvermerk und in der Versicherung eintragen. Diese Dateien sind im Unterverzeichnis `\functional-pages\` zu finden.
- Durch das Ausführen von der buildPdf.bat Datei wird die PDF-Datei erzeugt im Ordner `\output\` abgelegt und in Windows automatisch geöffnet. In Linux ist das automatische öffen nicht impimentiert.