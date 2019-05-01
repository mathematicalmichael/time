echo -en "\n## Report Generated on $(date)\n\n"
export YEAR=2019
export DAY=$(date | awk '{print $3}')
#export DAY=31
export MONTH=05
for d in `seq -f "%02g" 1 $DAY`; do
    watson log --from "$YEAR-$MONTH-$d" --to "$YEAR-$MONTH-$d" | sed 's/\t\[/- \[/g' | sed 's/\]/\]  /g' | head -n 1 | awk '{print "- " $2 " " $5 $6 $7}' | sed 's/(//g' | sed 's/)//g'
done
