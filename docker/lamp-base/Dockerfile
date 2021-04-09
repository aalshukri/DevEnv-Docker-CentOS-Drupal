#CentOS 7 Base Image - PHP 7.4 + Apache + MySQL
FROM centos:7

#Label
LABEL version="0.1"
LABEL name="centos-base+lamp"

#Set TZ
ENV TZ=Europe/London
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

#Install required packages
RUN yum clean all && yum makecache

RUN yum -y install yum-utils epel-release https://rpms.remirepo.net/enterprise/remi-release-7.rpm https://dev.mysql.com/get/mysql57-community-release-el7-11.noarch.rpm

RUN yum-config-manager --enable remi-php74 --enable mysql57-community

RUN curl -fsSL https://rpm.nodesource.com/setup_14.x | bash -

RUN yum -y install \
	lsof \
	rsync \
	git \
	curl \
	libpng \
	libpng-devel \
	oniguruma-devel \
	libxml2 \
	libxml2-devel \
	libzip \
	libzip-devel \
	zip \
	unzip \
	graphviz \
	nodejs \
	libXpm \
	libXpm-devel \
	libXrender \
	gtk2 \
	gtk2-devel \
	nss \
	nss-devel \
	GConf2 \
	GConf2-devel \
	chromium-headless \
	xorg-x11-server-Xvfb \
	gtk2-engines \
	xorg-x11-fonts-cyrillic \
	xorg-x11-fonts-100dpi \
	xorg-x11-fonts-75dpi \
	xorg-x11-fonts-misc \
	xorg-x11-apps \
	ImageMagick \
	libwebp \
	libwebp-devel \
	freetype \
	freetype-devel \
	libjpeg-turbo \
	libjpeg-turbo-devel \
	httpd \
	httpd-devel \
	mod_ssl \
	mod_fcgid \
	mysql-community-server \
	mysql-community-client \
	mysql-community-common \
	mysql-community-devel \
	mysql-community-libs \
	php-fpm \
	php-cli \
	php-common \
	php-zip \
	php-mbstring \
	php-bcmath \
	php-gettext \
	php-gd \
	php-iconv \
	php-mysql \
	php-xml \
	php-curl \
	php-pear \
	php-devel \
	composer
