FROM perl:5.22
MAINTAINER sjdy521 <sjdy521@163.com>
WORKDIR /root
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN cpanm -vn --mirror http://mirrors.163.com/cpan/ MIME::Lite Encode::Locale IO::Socket::SSL Mojolicious Mojo::Webqq
ADD login.pl .
ADD start.sh .
ADD viewqr .
RUN chmod 755 viewqr start.sh login.pl
CMD sh start.sh