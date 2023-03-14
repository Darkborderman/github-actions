echo ${INPUT_JSON_PATH}
export
sudo apt-get install jq -y
gh repo edit --add-topic `jq -r '.topics | join(",")' $JSON_PATH`
gh repo edit --homepage `jq -r '.homepage' $JSON_PATH`
gh repo edit --description "`jq -r '.description' $JSON_PATH`"
gh repo edit --enable-wiki=`jq -r '.enable_wiki' $JSON_PATH`
