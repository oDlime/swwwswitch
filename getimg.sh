#!/bin/bash

echo "正在获取ID为$1的图片:   https://wallhaven.cc/w/$1   "
sourcestring=$(curl "https://wallhaven.cc/w/$1" \
  -H 'authority: wallhaven.cc' \
  -H 'accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7' \
  -H 'accept-language: zh-CN,zh;q=0.9,en;q=0.8,en-GB;q=0.7,en-US;q=0.6' \
  -H 'cache-control: max-age=0' \
  -H 'cookie: _pk_id.1.01b8=da8edbb5af26fc7c.1693015556.; _pk_ses.1.01b8=1; XSRF-TOKEN=eyJpdiI6Ikh6bHpKbnNnWFh3d29Lbnp5ME12N3c9PSIsInZhbHVlIjoibFwvMnlFQXRPaWNrWU5UMXk0Y1MwYkJ1UE1NRUFPMlVEemt0TXF1dnlcL1ZRNzcydFwvK2hvS3hOXC9RWVRJVmZNdTEiLCJtYWMiOiJiMGU1Y2JiZTM5MTg3MzNkM2JmYTEyOTIxM2Y4NzU4NzYzY2Y2OTk1M2JiNGE3ZTI3MDU1Yzk2OTFmODg1MTQyIn0%3D; wallhaven_session=eyJpdiI6ImhjVHc1NGNLKzF3ZFNXQTl1RXJsU1E9PSIsInZhbHVlIjoiVXorRmFwR2huZGM0QVpma25LcTBGdjlsVjU5V0piYnBWaEx0UmRBK3NrNjJHeVVwZlRGcnNxcDdNVHN6b0NFVSIsIm1hYyI6IjU4NDk0YzYyNjg2NzRlMWFjNjA2NTYwNmM2NWU1NjYwNzhiMDE5Zjg5ZGI1YWUyMDkzNDg1NmYwN2M0MmQzMDQifQ%3D%3D' \
  -H 'referer: https://wallhaven.cc/toplist?page=1' \
  -H 'sec-ch-ua: "Chromium";v="116", "Not)A;Brand";v="24", "Microsoft Edge";v="116"' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'sec-ch-ua-platform: "Linux"' \
  -H 'sec-fetch-dest: document' \
  -H 'sec-fetch-mode: navigate' \
  -H 'sec-fetch-site: same-origin' \
  -H 'sec-fetch-user: ?1' \
  -H 'upgrade-insecure-requests: 1' \
  -H 'user-agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.62' \
  --compressed)
#echo $sourcestring | grep -oP "https://w.wallhaven.cc/full/\S+/\S+/(\S+)"
  echo $sourcestring | grep -oP "https://w.wallhaven.cc\S+/\S+/(\S+).(png|jpg)" > ./tmp/imgurl.tmp
