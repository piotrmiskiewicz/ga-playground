
cat values.yaml | sed -e "s/tag.*$/tag: $1/" > v.yaml
mv v.yaml values.yaml
