FROM nginx:latest
RUN apt-get update && \
	apt-get install -y \
		curl \
		python \
		make \
		g++ \
		gnupg \
		gnupg2

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash - && \
	apt-get install -y nodejs
