sketch torus.sketch> torus.tex  
# where torus.sketch is derived from the original code provided at https://tex.stackexchange.com/a/70979
# make a .tex file
if [ $? -eq 0 ]; then
echo "\documentclass[tikz]{standalone}">tmp.tex
echo "\begin{document}">> tmp.tex
echo "\input{torus.tex}">>tmp.tex
echo "\end{document}">>tmp.tex
#latex tmp.tex
#dvips -o p.eps tmp.dvi && gv p.eps
pdflatex tmp.tex
convert -density 300 tmp.pdf -quality 90 tmp.png
rm -f tmp.aux  tmp.dvi  tmp.log  tmp.tex
fi
