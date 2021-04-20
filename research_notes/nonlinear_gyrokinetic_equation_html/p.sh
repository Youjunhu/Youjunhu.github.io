mainfilename=nonlinear_gyrokinetic_equation
texmacs -c ../${mainfilename}.tm ${mainfilename}.pdf -quit 
texmacs -c ../${mainfilename}.tm ${mainfilename}.tex -quit 
latex ${mainfilename}.tex
latex ${mainfilename}.tex
htlatex ${mainfilename}.tex "myconfig, xhtml,4, charset=utf-8" " -cunihtf -utf8"
cp ${mainfilename}.html index.html
rsync -avz --delete ../nonlinear_gyrokinetic_equation_html/ /home/yj/public_html/research_notes/nonlinear_gyrokinetic_equation_html/

~/bin/publish_html.sh to_cluster
