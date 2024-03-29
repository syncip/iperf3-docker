FROM alpine:3.19.1

WORKDIR /data
COPY /data/app.sh app.sh

ENV port 5201

RUN apk add --update --no-cache iperf3 bash tini

RUN chmod +x app.sh

ENTRYPOINT ["nohup", "/sbin/tini", "--", "/data/app.sh"]