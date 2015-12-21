#!/bin/bash
printf "請輸入您的 GitHub API 身份象徵物(token)："
read github_api_token
printf "請輸入您的 GitHub 使用者識別名稱（非顯示名稱）："
read github_user_name
printf "請輸入您要操作的版本倉庫識別名稱（非顯示名稱）："
read github_repository_name
printf "請輸入要建立的議題標籤名稱："
read issue_new_label_name
printf "請輸入要建立的議題標籤顏色代碼（6 位十六進位碼，不包含開頭的井字號）："
read issue_new_label_color

# -i, --include: (HTTP) Include the HTTP-header in the output. The HTTP-header includes things like server-name, date of the document, HTTP-version and more...
curl --include --header "Authorization: token ${github_api_token}"\
     --data "{ \
               \"name\": \"${issue_new_label_name}\", \
               \"color\": \"${issue_new_label_color}\" \
             }" \
     "https://api.github.com/repos/${github_user_name}/${github_repository_name}/labels"

printf "\n請按 Enter 鍵結束程式。"
read nothing
exit 0
