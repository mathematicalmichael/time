watson report --week | sed 's/\t\[/- \[/g' | sed 's/\]/\]  /g' > README.md
