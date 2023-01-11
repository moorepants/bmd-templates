all: latexpdf docx zip
makeoutputdir:
	mkdir -p output/
latexpdf: makeoutputdir
	pdflatex --output-directory='abstract' abstract.tex
	mv abstract/abstract.pdf output/abstract-latex.pdf
docx: makeoutputdir bmd2023a.odt
	soffice --headless --convert-to docx bmd2023a.odt
	mv bmd2023a.docx output/
	cp bmd2023a.odt output/
zip: makeoutputdir
	zip bmd2023a.zip abstract/*.tex abstract/*.cls abstract/*.png abstract/figure1.pdf
	mv bmd2023a.zip output/
clean:
	(rm -rf *.fdb_latexmk *.fls *.ps *.log *.dvi *.aux *.*% *.lof *.lop *.lot *.toc *.idx *.ilg *.ind *.bbl *.blg *.cpt *.out)
	(rm -rf abstract/*.fdb_latexmk abstract/*.fls abstract/*.ps abstract/*.log abstract/*.dvi abstract/*.aux abstract/*.abstract/*% abstract/*.lof abstract/*.lop abstract/*.lot abstract/*.toc abstract/*.idx abstract/*.ilg abstract/*.ind abstract/*.bbl abstract/*.blg abstract/*.cpt abstract/*.out)
