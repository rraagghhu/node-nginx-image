# nginx uses debian
FROM nginx:latest

RUN apt-get update && apt-get install -y \
	curl \
	python \
	make \
	g++

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get update && apt-get install -y \
	nodejs
