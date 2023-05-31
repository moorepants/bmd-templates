all: abstractpdf paperpdf docx zip
makeoutputdir:
	mkdir -p output/
abstractpdf: makeoutputdir
	pdflatex --output-directory='abstract' abstract.tex
	cp abstract/abstract.pdf output/abstract-latex.pdf
paperpdf: makeoutputdir
	pdflatex --output-directory='paper' paper.tex
	pdflatex --output-directory='paper' paper.tex
	cp paper/paper.pdf output/paper-latex.pdf
docx: makeoutputdir bmd2023a.odt
	soffice --headless --convert-to docx bmd2023a.odt
	mv bmd2023a.docx output/
	cp bmd2023a.odt output/
	cp bmd2023p.docx output/
	cp bmd2023p.odt output/
zip: makeoutputdir
	zip bmd2023a.zip abstract/*.tex abstract/*.cls abstract/*.png abstract/*.pdf abstract/*.bib
	zip bmd2023p.zip paper/*.tex paper/*.cls paper/*.png paper/*.pdf paper/*.bib
	mv bmd2023a.zip output/
	mv bmd2023p.zip output/
clean:
	(rm -rf *.fdb_latexmk *.fls *.ps *.log *.dvi *.aux *.*% *.lof *.lop *.lot *.toc *.idx *.ilg *.ind *.bbl *.blg *.cpt *.out)
	(rm -rf abstract/*.fdb_latexmk abstract/*.fls abstract/*.ps abstract/*.log abstract/*.dvi abstract/*.aux abstract/*.abstract/*% abstract/*.lof abstract/*.lop abstract/*.lot abstract/*.toc abstract/*.idx abstract/*.ilg abstract/*.ind abstract/*.bbl abstract/*.blg abstract/*.cpt abstract/*.out)
	(rm -rf paper/*.fdb_latexmk paper/*.fls paper/*.ps paper/*.log paper/*.dvi paper/*.aux paper/*.paper/*% paper/*.lof paper/*.lop paper/*.lot paper/*.toc paper/*.idx paper/*.ilg paper/*.ind paper/*.bbl paper/*.blg paper/*.cpt paper/*.out)
