# Latex Template für wissenschaftliche Arbeiten an der THM

[![Build Status](https://img.shields.io/endpoint.svg?url=https%3A%2F%2Factions-badge.atrox.dev%2FTheRobot2105%2FLatex-Template-THM%2Fbadge%3Fref%3Dmain&style=flat&label=Compile&logo=none)](https://actions-badge.atrox.dev/TheRobot2105/Latex-Template-THM/goto?ref=main)

Dieses Template beinhaltet eine Grundstruktur die möglichst nahe an den wissenschaftlichen Richtlinien der THM. Es baut auf diesem [Template](https://www.oxfordechoes.com/oxford-thesis-template/) auf, der im Original für die Oxford Universität gedacht war und schon mehrfach angepasst wurde. Das Deckblatt der THM und andere Anpassungen an die wissenschaftlichen Richtlinien der THM wurde von einer mir unbekannten Person erstellt. Alle weiteren Personen die Änderungen vorgenommen haben, sind in der License-Datei aufgeführt.

## Hinweise

- Es wurden nicht alles auf Deutsch übersetzt, das meiste sollte auch so verständlich sein.
- Die Erzeugung ist auf Windows und auf Linux möglich. Für Windows die `buildPDF.bat` Datei ausführen und für Linux die `buildPDFLinux.sh` Datei ausführen.
- Code-Highlighting erfordert eine lokale Python-Installation mit Zusatzpaketen. Siehe Anmerkungen in ociamthesis.cls für weitere Informationen. (ggf. Entfernen!)

## Nutzung dieses Template

- Zuerst muss eine Tex-Distribution installiert werden wie beispielsweise [Miktex](https://miktex.org/) für Windows oder [Texlive](https://tug.org/texlive/) für Linux und ein LaTex-editor wie [TeXstudio](https://www.texstudio.org/)
- Dann das Repository klonen und den eigenen Namen und Adresse im Deckblatt, im Sperrvermerk und in der Versicherung eintragen. Diese Dateien sind im Unterverzeichnis `\functional-pages\` zu finden.
-Durch das Ausführen von der buildPdf.bat Datei wird die PDF-Datei erzeugt im Ordner `\output\` abgelegt und in Windows automatisch geöffnet. In Linux ist das automatische öffen nicht impimentiert.

### Erklärung der Verzeichnisse

1. Das Verzeichnis content umfasst denjenigen Inhalt, der sich wahrscheinlich ändert. Die weitere Struktur dürfte selbsterklärend sein.

2. Das Verzeichnis functional-pages umfasst diejenigen Seiten, die sich nicht oder wenig ändern. Das umfasst etwa die Eigenständigkeitserklärung, die Titelseite und dergleichen. Verschiedene Layouts hinsichtlich der Titelseiten sollten selbstredend benannt sein.

3. Das Verzeichnis configuration umfasst das Einrichten der Glossare sowie das Mappen von eventuell mehrfach vorhandener Literaturverzeichnisse.

4. Das Verzeichnis tmp ist nur dafür da, um die vielen Dateien, die im Rahmen des PDF-Kompilierung anfallen auszulagern. Es wird aus Gründen der Reproduzierbarkeit vor jedem Kompilieren komplett gelöscht und neu erstellt.
