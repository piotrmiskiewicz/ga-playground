export file=chart/new-chart/values.yaml
cat $file | sed -e "s/tag.*$/tag: $1/" > tmp.yaml
mv tmp.yaml $file
