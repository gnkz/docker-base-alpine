FROM alpine:edge
MAINTAINER gnkz.dev@gmail.com

RUN apk add --update su-exec
COPY setup.sh /usr/bin/setup
COPY entry.sh /usr/bin/entry
RUN chmod +x /usr/bin/entry

ENTRYPOINT ["/usr/bin/entry"]
