FROM alpine:3.4
RUN apk --no-cache add dnsmasq
COPY dnsmasq.conf /etc/dnsmasq.conf
EXPOSE 53 53/udp
ENTRYPOINT ["dnsmasq", "-k"]
