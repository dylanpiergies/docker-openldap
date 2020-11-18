FROM alpine

RUN apk add --no-cache openldap openldap-back-mdb && \
  mkdir -p /run/openldap

EXPOSE 389
ENTRYPOINT ["slapd", "-dstats,stats2"]
