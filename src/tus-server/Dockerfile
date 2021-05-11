FROM tusproject/tusd

COPY hooks /hooks
COPY minio-setup.sh /srv

# Switch to root use to be able to run
# apk add and chmod +x
USER root

# Install ffmpeg
RUN apk add  --no-cache ffmpeg

# Install minio client (mc) and make mc and setup script executable 
WORKDIR /usr/local/bin

RUN wget https://dl.min.io/client/mc/release/linux-amd64/mc && \
	chmod +x mc && \
	chmod +x /srv/minio-setup.sh

WORKDIR /srv
