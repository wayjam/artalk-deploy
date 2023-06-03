# syntax=docker/dockerfile:1
FROM artalk/artalk-go AS base

FROM base as with-conf

COPY artalk.yml /tmp/
COPY entrypoint.sh /custom-entrypoint.sh
RUN chmod +x /custom-entrypoint.sh

ENTRYPOINT ["/custom-entrypoint.sh"]
