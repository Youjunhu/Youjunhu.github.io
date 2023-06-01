mainfilename=nonlinear_gyrokinetic_equation
#texmacs -c ../${mainfilename}.tm ${mainfilename}.pdf -quit 
#texmacs -c ../${mainfilename}.tm ${mainfilename}.tex -quit 
#pdflatex ${mainfilename}.tex
#pdflatex ${mainfilename}.tex

htlatex ${mainfilename}.tex "myconfig, xhtml,2, charset=utf-8" " -cunihtf -utf8"
cp ${mainfilename}.html index.html
rsync -avz --delete ../html/ /home/yj/Youjunhu.github.io/research_notes/nonlinear_gyrokinetic_equation_html/

#~/bin/publish_html.sh to_cluster
