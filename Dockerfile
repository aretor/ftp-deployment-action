FROM debian:stable-slim

WORKDIR /app

RUN apt-get -y update && \
    apt-get install -y \
        lftp

COPY init.sh /app/init.sh
COPY LICENSE README.md /app/

ENTRYPOINT ["/app/init.sh"]
#RUN ["/bin/sh", "/app/init.sh"]
