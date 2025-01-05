Dieses Template baut auf diesem Projekt (https://www.oxfordechoes.com/oxford-thesis-template/) auf dürfte für jegliche Berichte und Thesen geeignet sein. Die finale PDF kann dabei sowohl für den Druck als auch für die digitale Verwendung hin optimiert werden.

### Wichtige Infos und Schritte, um dieses Template lauffähig zu kriegen:
1.  Code-Highlighting erfordert eine lokale Python-Installation mit Zusatzpaketen. Siehe Anmerkungen in ociamthesis.cls für weitere Informationen. (ggf. Entfernen!)

2.  Das Kompilieren der PDF erfolgt über das Hilfsskript buildPdf.bat. Die finale PDF wird im Hauptverzeichnis abgelegt.

### Weitere Infos zur Benutzung:
1.  Dieses Template umfasst so ziemlich alles an Vorgaben aus der Oxford- und der THM-Welt. Das reicht von der Einzelseite des Abstracts vorneweg über verschiedene Vorworte, etliche Stichwort-, Abkürzungs- und verschiedene Literaturverzeichnisse. Dies ist vermutlich zu viel. Daher gilt es vor der Verwendung das Template erstmal entsprechend zu verschlanken.

2.  Denglisch. Nicht alle Überschriften und Bezeichnungen wurden übersetzt, weil zumindest für mich klar war, dass ich diesen Abschnitt nicht benötige. Diese sind entsprechend bei Bedarf anzupassen.
3.  Die Struktur dieses Templates dreht sich im Wesentlichen um die report.tex sowie die ociamthesis.cls. Letztere bindet Pakete ein und konfiguriert sehr viel. report.tex konfiguriert einige weitere Dinge (sorry, eine klare Trennlinie kann ich ad hoc nicht ziehen) und baut vor allem das eigentliche Dokument auf. Dort werden etwa die Seitenzahlen an den richtigen Seiten auf das arabische Format gewechselt, die Verzeichnisse an korrekter Stelle eingebunden und vor allem auch all die inhaltlichen Kapitel.
4.  Das Verzeichnis content umfasst denjenigen Inhalt, der sich wahrscheinlich ändert. Die weitere Struktur dürfte selbsterklärend sein.
5.  Das Verzeichnis functional-pages umfasst diejenigen Seiten, die sich nicht oder wenig ändern. Das umfasst etwa die Eigenständigkeitserklärung, die Titelseite und dergleichen. Verschiedene Layouts hinsichtlich der Titelseiten sollten selbstredend benannt sein.
6.  Das Verzeichnis configuration umfasst das Einrichten der Glossare sowie das Mappen von eventuell mehrfach vorhandener Literaturverzeichnisse.
7.  Das Verzeichnis tmp ist nur dafür da, um die vielen Dateien, die im Rahmen des PDF-Kompilierung anfallen auszulagern. Es wird aus Gründen der Reproduzierbarkeit vor jedem Kompilieren komplett gelöscht und neu erstellt.

### Und noch mehr:
1.  Die Zwischenkapitel werden mithilfe des Pakets minitoc erstellt. Dieses ist eine ziemlich Mimose und ich verweise auf \mtcaddchapter. (Im Wesentlichen kommt das Paket bei Überschriften, die nicht zu Kapiteln gehören, die aber so ähnlich sind - wie eben bei Verzeichnissen - gerne durcheinander. Im Ergebnis werden die Mini-Inhaltsverzeichnisse entweder nicht oder an falscher Stelle erstellt. Als Gegenmaßnahme muss vorgenannter Befehl verwendet werden, um dem Paket zu signalisieren, dass die Überschrift "nicht mitgezählt" werden soll - so meine Erklärung des Ganzen.)

2.  Die Seiteneinrichtung (Ränder) und Seitenzahlen passen NICHT zu den THM-Vorgaben! Folgen dafür aber gängigen Standards...

Das war's soweit - hoffe ich.