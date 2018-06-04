# Dockerfile
Dockerfile about software of bioinformatics 
# Get Docker Images
Images | Depository |Tag
---|---|---
ubuntu | lkalbert001/ubuntu | 14.04
r-base | lklabert001/r-base | latest
contra | lkalbert001/contra | 2.0.8
Tophat2 | lkalbert001/tophat2 | latest
VarScan2 | lkalbert001/varscan2 |2.4.3
RSeQC |  lkalbert001/rseqc
HTSeq | docker pull lkalbert001/htseq
msort | docker pull lkalbert001/msort
rMATs | docker pull lkalbert001/rmats
java8 | docker pull lkalbert001/java8

镜像下载命令：
```
# tag为'latest'，则可省略
docker pull <depository>:<tag>
```
