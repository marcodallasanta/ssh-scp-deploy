FROM alpine:latest

RUN  apk update && \
  apk add --no-cache ca-certificates \
  openssh-client \
  sshpass

COPY LICENSE README.md /
COPY entrypoint.sh with_key.sh with_pass.sh /

ENTRYPOINT ["/entrypoint.sh"]
