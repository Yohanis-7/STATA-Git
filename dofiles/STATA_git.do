*** STATA Git Integration ***

* Install the Stata Guide schemes - https://medium.com/the-stata-guide/stata-schemes-5ef99d099585 **
ssc install schemepack, replace

set scheme black_w3d

*Set default graph font to Arial Narrow (see the Font guide- https://medium.com/the-stata-guide/stata-graphs-get-those-fonts-right-c38d35625142  on customizing fonts)
graph set window fontface "Arial Narrow"

**STATA Git Integration**
help shell
clear
cap cd "D:\GIT\STATA_GIT_Integration\STATA-Git"

sysuse auto, clear
scatter price mpg 
graph export ./figures/figure1.png, replace wid(1000)
scatter length weight
graph export ./figures/figure2.png, replace wid(1000)
scatter price weight
graph export ./figures/figure3.png, replace wid(1000)
scatter length mpg
graph export ./figures/figure4.png, replace wid(1000)

** Push to GIthub **
* First check whether we are in the correct directory *
dir

** Generate the README.md file
! echo # This is the STATA github >> README.md

* Then Initialize the Git code
! git init

* Next add the README.md file and commit it:
! git add README.md
! git commit -m "first upload"
! git branch -M main
** Show where we want to add the file
! git remote add origin https://github.com/Yohanis-7/STATA-Git.git
! git push -u origin main
! git branch -b


***or create a new repository on the command line
echo "# STATA-Git" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/Yohanis-7/STATA-Git.git
git push -u origin main

** or push an existing repository from the command line
git remote add origin https://github.com/Yohanis-7/STATA-Git.git
git branch -M main
git push -u origin main















