FROM alpine

RUN apk update
RUN apk add --no-cache tzdata
RUN apk add --no-cache curl
COPY ./script.sh /tmp/
ENV TZ Australia/Sydney

CMD [ "/bin/sh", "/tmp/script.sh" ]