FROM perl:5.22
MAINTAINER sjdy521 <sjdy521@163.com>
WORKDIR /root
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
ADD sources.list /etc/apt/
RUN apt-get update && apt-get install -y unzip
RUN cpanm --mirror http://mirrors.163.com/cpan/ Encode::Locale IO::Socket::SSL Mojolicious Mojo::Webqq
ADD login.pl .
ADD start.sh .
ADD viewqr .
RUN chmod 755 viewqr start.sh login.pl
CMD sh start.sh