FROM alpine

RUN apk add --no-cache icecast mailcap
RUN mkdir /etc/icecast \
    && chown icecast:icecast /etc/icecast

ADD ./start.sh /start.sh
USER icecast

EXPOSE 8000
VOLUME ["/var/log/icecast"]
CMD ["/start.sh"]
