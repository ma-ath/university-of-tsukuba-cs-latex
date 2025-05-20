# Use XeLaTeX for all latex processing
$pdflatex = 'xelatex -interaction=nonstopmode -synctex=1 %O %S';
$latex = $pdflatex;   # For safety, make $latex same as $pdflatex
$pdf_mode = 1;

# Use Biber for bibliography processing (biblatex backend)
$bibtex = 'biber %O %S';

# PDF viewer
$pdf_previewer = 'evince %S';

# Cleanup files
$clean_ext = 'aux bbl blg log out toc synctex.gz fls fdb_latexmk bcf run.xml lof lot';
