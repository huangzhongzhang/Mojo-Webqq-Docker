FROM daocloud.io/centos
MAINTAINER www.huangzhongzhang.cn
WORKDIR /root
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN yum -y update && yum -y install openssl-devel wget unzip
RUN wget https://github.com/sjdy521/Mojo-CentosPerl/archive/master.zip -O Mojo-CentosPerl.zip
RUN unzip Mojo-CentosPerl.zip && mv Mojo-CentosPerl-master/perl/ /usr/local/
ADD login.pl .
ADD start.sh .
ADD viewqr .
RUN chmod 755 viewqr start.sh login.pl
CMD sh start.sh