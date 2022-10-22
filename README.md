# 安装的环境
- conda install pytorch torchvision torchaudio cudatoolkit=11.0 -c pytorch
- pip install pyyaml
- pip install tqdm
- pip install matplotlib
- pip install sklearn
- pip install h5py
# ImageNet2012 val解压脚本
- valprep.sh  解压val 数据集
- for x in `ls train/*tar`; do fn=train/`basename $x .tar`; mkdir $fn; tar -xvf $x -C $fn; rm -f $fn.tar; done 解压所有train



# 过程
## zip
- tar xvf 目录文件名.tar 解压tar
- for i in $(ls ./n*.tar);do tar xvf $i;done 写成sh脚本，解压全部n* tar
- 解压zip到zip名的目录 注意window和linux的空格可能不同

zip1.sh
- find ./ -name "n*.JPEG"|xargs -i rm {} 找到所有n* JPEG的图片，并依次删除


- du -h --max-depth=1 ./# 查看当前目录的大小
# 问题
## 使用view时报错
RuntimeError: view size is not compatible with input tensor's size and stride (at least one dimension spans across two contiguous subspaces). Use .reshape(...) instead.
- 将变量先转为contiguous ，再进行view。  
            correct_k = correct[:k].contiguous().view(-1).float().sum(0, keepdim=True)
            
            # correct_k = correct[:k].view(-1).float().sum(0, keepdim=True)
