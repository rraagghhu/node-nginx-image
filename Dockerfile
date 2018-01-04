FROM ubuntu:16.04

# Install essentials
RUN apt-get update && \
	apt-get install -y \
		curl \
		build-essential \
		ca-certificates \
		gcc \
		git \
		libpq-dev \
		make \
		python-pip \
		python2.7 \
		python2.7-dev \
		ssh

# Install nginx
RUN apt-get install -y nginx

# Configure nginx
RUN echo "\ndaemon off;" >> /etc/nginx/nginx.conf
RUN chown -R www-data:www-data /var/lib/nginx

# Install node
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash - && \
	apt-get install -y nodejs

# Cleanup
RUN apt-get autoremove
RUN apt-get clean
