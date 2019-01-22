cat intro_readme.md > README.md
cat "## Week to Date" >> README.md
watson report --week | sed 's/\t\[/- \[/g' | sed 's/\]/\]  /g' >> README.md

cat "## Last Week" >> README.md
watson report | sed 's/\t\[/- \[/g' | sed 's/\]/\]  /g' >> README.md

cat "## Last Month" >> README.md
watson report --month | sed 's/\t\[/- \[/g' | sed 's/\]/\]  /g' >> README.md

cat "## Last Year" >> README.md
watson report --year | sed 's/\t\[/- \[/g' | sed 's/\]/\]  /g' >> README.md

