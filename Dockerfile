FROM alpine
ENV SLEEP=5
RUN apk update
RUN apk add --no-cache tzdata
RUN apk add --no-cache curl
COPY ./script.sh /tmp/
ENV TZ Australia/Sydney
USER root
CMD /bin/sh /tmp/script.sh ${SLEEP}