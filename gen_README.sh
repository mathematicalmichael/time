cat intro_readme.md > README.md
watson report --week | sed 's/\t\[/- \[/g' | sed 's/\]/\]  /g' >> README.md
