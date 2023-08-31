 #!/bin/bash
url=$(cat ./tmp/imgurl.tmp)
# 下载图片
curl -o ./wallpaper/$(basename $url) $url

#echo "./wallpaper/" > ./tmp/localimgurl.tmp
#echo $url | cut -d/ -f6 >> ./tmp/localimgurl.tmp
#cat ./tmp/localimgurl.tmp

echo $url | cut -d/ -f6 > ./tmp/filename.tmp
swww img ./wallpaper/$(cat ./tmp/filename.tmp)


