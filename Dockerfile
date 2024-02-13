FROM debian:12-slim

LABEL org.opencontainers.image.title="Augustus built on debian"
LABEL org.opencontainers.image.authors="Julien FOURET"
LABEL org.opencontainers.image.description="[Augustus](http://bioinf.uni-greifswald.de/webaugustus/)"
LABEL org.opencontainers.image.vendor="Nexomis"
LABEL org.opencontainers.image.licenses="Apache-2.0 AND Artistic-1.0"

ENV DEBIAN_FRONTEND="noninteractive" TZ="Europe/Paris"

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    augustus=3.5.0+dfsg-2 \
  && rm -rf /var/lib/apt/lists/*

ENTRYPOINT [""]
CMD [""]
