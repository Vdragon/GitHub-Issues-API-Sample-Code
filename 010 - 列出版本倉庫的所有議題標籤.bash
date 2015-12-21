#!/bin/bash
printf "請輸入要查詢的 GitHub 使用者識別名稱（非顯示名稱）："
read github_user_name
printf "請輸入要查詢的版本倉庫識別名稱（非顯示名稱）："
read github_repository_name

# -i, --include: (HTTP) Include the HTTP-header in the output. The HTTP-header includes things like server-name, date of the document, HTTP-version and more...
curl --include https://api.github.com/repos/${github_user_name}/${github_repository_name}/labels

printf "\n請按 Enter 鍵結束程式。"
read nothing
exit 0
