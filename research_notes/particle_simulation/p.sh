mainfilename=particle_simulation
texmacs -c ../${mainfilename}.tm ${mainfilename}.tex -quit  
#sed -i "/b4paper/c\geometry{b4paper}" ${mainfilename}.tex
gawk '/\geometry{b4paper, paperheight= auto, paperwidth= auto}/{gsub(/, paperheight= auto, paperwidth= auto/, "")} {print}' ${mainfilename}.tex >tmp.tex
htlatex tmp.tex "myconfig, xhtml,4, charset=utf-8" " -cunihtf -utf8"  

cp ${mainfilename}.html index.html
rsync -avz --delete ../particle_simulation/ /home/yj/public_html/research_notes/particle_simulation/
