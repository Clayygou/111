# 安装的环境
- conda install pytorch torchvision torchaudio cudatoolkit=11.0 -c pytorch
- pip install pyyaml
- pip install tqdm
- pip install matplotlib
- pip install sklearn
- pip install h5py




# 过程
## zip
- tar xvf 目录文件名.tar 解压tar
- for i in $(ls ./n*.tar);do tar xvf $i;done 写成sh脚本，解压全部n* tar
- 解压zip到zip名的目录 注意window和linux的空格可能不同

zip1.sh
- find ./ -name "n*.JPEG"|xargs -i rm {} 找到所有n* JPEG的图片，并依次删除


- du -h --max-depth=1 ./# 查看当前目录的大小
