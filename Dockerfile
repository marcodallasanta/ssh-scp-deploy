FROM alpine:latest

RUN  apk update && \
  apk add --no-cache ca-certificates \
  openssh-client \
  sshpass \
  bash

COPY LICENSE README.md /


COPY entrypoint.sh /entrypoint.sh
COPY with_key.sh /with_key.sh
COPY with_pass.sh /with_pass.sh

ENTRYPOINT ["/entrypoint.sh"]
