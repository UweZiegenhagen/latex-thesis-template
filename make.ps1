Clear-Host
cd "C:\Users\Uwe\Desktop\VorlageWissArbeit\"

$main="Hauptdokument"

pdflatex ($main+".tex")
makeindex ($main+".nlo") -s nomencl.ist -o ($main + ".nls")
makeindex -s ($main+".ist") -t ($main+".glg") -o ($main+".gls") ($main+".glo")
bibtex $main
makeindex $main
pdflatex ($main+".tex")
