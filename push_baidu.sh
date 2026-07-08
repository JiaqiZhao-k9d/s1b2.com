#!/bin/bash
# 使用方法：将 SITE、TOKEN 修改为你的站点和在百度站长获取的 token
SITE="www.s1b2.com"
TOKEN="你的_baidu_token"
URLS_FILE="urls.txt"

if [ ! -f "$URLS_FILE" ]; then
  echo "找不到 $URLS_FILE，请把要推送的 URL 列在该文件中（每行一个）"
  exit 1
fi

# 批量推送
curl -s -X POST --data-binary @"$URLS_FILE" "http://data.zz.baidu.com/urls?site=${SITE}&token=${TOKEN}" -H 'Content-Type:text/plain' | jq .
