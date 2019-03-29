echo -en "\n## Report Generated on $(date)\n\n"
for d in `seq -f "%02g" 1 $(date | awk '{print $3}')`; do
    watson log --from "2019-03-$d" --to "2019-03-$d" | sed 's/\t\[/- \[/g' | sed 's/\]/\]  /g' | head -n 1 | awk '{print "- " $2 " " $5 $6 $7}' | sed 's/(//g' | sed 's/)//g'
done
