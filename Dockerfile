FROM arm64v8/debian:buster-slim

ARG EXPORTER_URL=http://ports.ubuntu.com/pool/universe/p/prometheus-postgres-exporter/prometheus-postgres-exporter_0.4.1+ds-2_arm64.deb

RUN apt update && \
    apt install -y wget daemon && \
    wget ${EXPORTER_URL} && \
    dkpg -i prometheus-postgres-exporter_0.4.1+ds-2_arm64.deb

ENTRYPOINT ["prometheus-postgres-exporter"]