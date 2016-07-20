FROM rancher/confd-base:0.11.0-dev-rancher

ADD ./conf.d /etc/confd/conf.d
ADD ./templates /etc/confd/templates

VOLUME ["/data"]

ENV AUTH_SSL_CRT=false \
    AUTH_SSL_KEY=false \
    GITHUB_CLIENT_ID=false \
    GITHUB_SECRET=false

ENTRYPOINT ["/confd"]
CMD ["--backend", "env", "--onetime", "--log-level", "debug"]
