echo "Beginning Summary Process"
cat intro_readme.md > README.md
bash gen_summary.sh > feb_summary.md
cat feb_summary.md >> README.md

echo "Second Part..."
echo -en "\n\n## This Week\n" >> README.md
watson report --week | sed 's/\t\[/- \[/g' | sed 's/\]/\]  /g' >> README.md

echo -en "\n\n## Last 7 Days\n" >> README.md
watson report | sed 's/\t\[/- \[/g' | sed 's/\]/\]  /g' >> README.md

echo -en "\n\n## Last Month\n" >> README.md
watson report --month | sed 's/\t\[/- \[/g' | sed 's/\]/\]  /g' >> README.md

echo -en "\n\n## Last Year\n" >> README.md
watson report --year | sed 's/\t\[/- \[/g' | sed 's/\]/\]  /g' >> README.md

