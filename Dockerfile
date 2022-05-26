FROM alpine:latest

ENV JOBS=2
ENV PARALLEL_FILES=1
ENV AVERAGE=5
ENV SAMPLE=4
ENV TOP=32
ENV PGBADGER_VERSION=11.8
ENV PGBADGER_PREFIX=/opt/pgbadger-${PGBADGER_VERSION}
ENV PATH=${PGBADGER_PREFIX}:$PATH

RUN apk --no-cache add coreutils \
    openssl \
    perl \
  && mkdir -p /opt \
  && wget -O - https://github.com/darold/pgbadger/archive/v${PGBADGER_VERSION}.tar.gz | tar -zxvf - -C /opt \
  && chmod +x ${PGBADGER_PREFIX}/pgbadger

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

CMD ["pgbadger"]
