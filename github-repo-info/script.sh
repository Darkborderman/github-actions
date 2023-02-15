sudo wget https://github.com/mikefarah/yq/releases/download/v4.33.3/yq_linux_amd64 -O /usr/bin/yq
sudo chmod +x /usr/bin/yq

gh repo edit --add-topic `yq -r '.github.topics | join(",")' $YML_PATH`

HOMEPAGE=$(yq -r '.github.homepage' $YML_PATH)
if [ "$HOMEPAGE" != "null" ]; then
    gh repo edit --homepage "$HOMEPAGE"
else
    gh repo edit --homepage ""
fi

DESCRIPTION=$(yq -r '.github.description' $YML_PATH)
if [ "$DESCRIPTION" != "null" ]; then
    gh repo edit --description "$DESCRIPTION"
else
    gh repo edit --description ""
fi

ENABLE_WIKI=$(yq -r '.github.enable_wiki' $YML_PATH)
if [ "$ENABLE_WIKI" == "true" ] || [ "$ENABLE_WIKI" == "false" ]; then
    gh repo edit --enable-wiki="$ENABLE_WIKI"
fi

ENABLE_PROJECTS=$(yq -r '.github.enable_projects' $YML_PATH)
if [ "$ENABLE_PROJECTS" == "true" ] || [ "$ENABLE_PROJECTS" == "false" ]; then
    gh repo edit --enable-projects="$ENABLE_PROJECTS"
fi

ENABLE_DISCUSSIONS=$(yq -r '.github.enable_discussions' $YML_PATH)
if [ "$ENABLE_DISCUSSIONS" == "true" ] || [ "$ENABLE_DISCUSSIONS" == "false" ]; then
    gh repo edit --enable-discussions="$ENABLE_DISCUSSIONS"
fi

ENABLE_ISSUES=$(yq -r '.github.enable_issues' $YML_PATH)
if [ "$ENABLE_ISSUES" == "true" ] || [ "$ENABLE_ISSUES" == "false" ]; then
    gh repo edit --enable-issues="$ENABLE_ISSUES"
fi

TEMPLATE=$(yq -r '.github.template' $YML_PATH)
if [ "$TEMPLATE" == "true" ] || [ "$TEMPLATE" == "false" ]; then
    gh repo edit --template="$TEMPLATE"
fi
