pdflatex Hauptdokument.tex
makeindex Hauptdokument.nlo -s nomencl.ist -o Hauptdokument.nls
makeindex -s Hauptdokument.ist -t Hauptdokument.glg -o Hauptdokument.gls Hauptdokument.glo
bibtex Hauptdokument
makeindex Hauptdokument
pdflatex Hauptdokument.tex
