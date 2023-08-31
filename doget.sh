#!/bin/bash
# 传入页数，默认蔚1
page=${1:-1}

echo "正在获取第$page页壁纸..."
# 请求
sourcestring=$(curl "https://wallhaven.cc/toplist?page=$page" \
  -H 'authority: wallhaven.cc' \
  -H 'accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7' \
  -H 'accept-language: zh-CN,zh;q=0.9,en;q=0.8,en-GB;q=0.7,en-US;q=0.6' \
  -H 'cache-control: max-age=0' \
  -H 'cookie: _pk_id.1.01b8=da8edbb5af26fc7c.1693015556.; _pk_ses.1.01b8=1; XSRF-TOKEN=eyJpdiI6Im9CNjRYUFNsZXF2NmhvelpscDdCVlE9PSIsInZhbHVlIjoiZkpObW50YkVmaGVqTjMyaUMwMVp3MGJPaGtUNXpEajdtdkt1WUI4OEtRS0JnR2VUTmN2NFAzaGZJd2tTMktvNSIsIm1hYyI6IjA3ZTZkMTFmNmRlODQ1NDI0MTM1MmZlZmI3MmFjODNhYjhkMmJkMGMwOTY0ZDRiNGUzZDM0YjdhMDZlYTgyMDAifQ%3D%3D; wallhaven_session=eyJpdiI6IkhYazBmc3pFemliVjNDTEVrb0FlZVE9PSIsInZhbHVlIjoiTnNvVWduMURRZ1FkK0dtR3lzM1FvdFFVVkt6dzNOeGZUemYyWVJORlRvVXlCVlhITDMyUUhlY2R4THEySm1LTCIsIm1hYyI6IjY5MTQyYzExMjhlZjE0MWIwYjQ0MGM1MmU0Mjc0YTg1NzRiMmRlNjk3NmRmMjIwMzc2YzQ0MTIxYmEzZWRmYzIifQ%3D%3D' \
  -H 'referer: https://wallhaven.cc/' \
  -H 'sec-ch-ua: \"Chromium\";v=\"116\", \"Not)A;Brand\";v=\"24\", \"Microsoft Edge\";v=\"116\"' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'sec-ch-ua-platform: \"Linux\"' \
  -H 'sec-fetch-dest: document' \
  -H 'sec-fetch-mode: navigate' \
  -H 'sec-fetch-site: same-origin' \
  -H 'sec-fetch-user: ?1' \
  -H 'upgrade-insecure-requests: 1' \
  -H 'user-agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.62' \
  --compressed)
  echo $sourcestring | grep -oP "https://th.wallhaven.cc\S+/\S+/(\S+)\.jpg" | cut -d/ -f6 | cut -d. -f1 > ./tmp/filename.temp
  
  
  
  
