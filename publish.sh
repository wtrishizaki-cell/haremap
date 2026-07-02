#!/bin/bash
cd "$(dirname "$0")"
BUILD=$(date +%s)
sed -i '' "s/name=\"build-time\" content=\"[^\"]*\"/name=\"build-time\" content=\"${BUILD}\"/" index.html
git add index.html
git commit -m "ハレマップ更新 $(date '+%Y/%m/%d %H:%M')"
git push
echo ""
echo "✅ 公開完了 — https://wtrishizaki-cell.github.io/haremap/"
