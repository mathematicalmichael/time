cat intro_readme.md > README.md
echo "## Week to Date" >> README.md
watson report --week | sed 's/\t\[/- \[/g' | sed 's/\]/\]  /g' >> README.md

echo"## Last Week" >> README.md
watson report | sed 's/\t\[/- \[/g' | sed 's/\]/\]  /g' >> README.md

echo "## Last Month" >> README.md
watson report --month | sed 's/\t\[/- \[/g' | sed 's/\]/\]  /g' >> README.md

echo "## Last Year" >> README.md
watson report --year | sed 's/\t\[/- \[/g' | sed 's/\]/\]  /g' >> README.md

