FROM alpine:latest

RUN  apk update && \
  apk add --no-cache ca-certificates \
  openssh-client \
  sshpass \
  bash

COPY LICENSE README.md /

COPY *.sh ./

ENTRYPOINT ["/entrypoint.sh"]
