FROM registry.cn-hangzhou.aliyuncs.com/zhongxh/mediasoup-nodejs:v16

RUN \
	set -x \
	&& apt-get update \
	&& apt-get install -y net-tools build-essential python3 python3-pip valgrind

WORKDIR /service

COPY package.json .
RUN npm install
