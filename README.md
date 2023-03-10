This repository houses the abstract and paper templates for the Bicycle and
Motorcycle Dynamics Conference. The initial templates are a merger of the BMD
2019 templates and the TU Delft OPEN templates.

The current process is to create an OpenDocument and LaTeX source that are as
close to each other as possible. A Microsoft Word docx file is then exported
from LibreOffice Writer based on the ODT file. This gives three versions:
tex+cls, odt, and docx. The format is based primarily on the TU Delft OPEN
style to match their books.

The files that we deliver to the authors can be built with:

```
make all
```

See the Makefile for various subcommands. This will generate a docx and a zip
file with the latex source and its output. All files end up in the `output/`
directory.

Command to convert the figure pdf to a high resolution png:

```
convert -density 600 -define pdf:use-cropbox=true abstract/figure1.pdf figure1.png
```
