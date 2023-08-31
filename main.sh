 #!/bin/bash
pagenum=${1:-1}  # 第一个参数 页数
index=${2:-1}    # 第二个参数 行数

# 获取第n页壁纸的编号
./doget.sh $pagenum

# 文件名中第n个编号
cat ./tmp/filename.temp | head -n $index | tail -n +$index > ./tmp/id.tmp

id=$(cat ./tmp/id.tmp)
echo $id
# 下载编号对应的图片
./getimg.sh $id
./switch.sh

