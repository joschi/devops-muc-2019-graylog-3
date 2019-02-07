FROM debian:buster-slim
RUN \
  apt update && apt install -y wget && apt clean && rm -rf /var/lib/apt/lists/* && \
  wget -q https://github.com/Graylog2/collector-sidecar/releases/download/1.0.0-rc.1/graylog-sidecar_1.0.0-1.rc.1_amd64.deb && \
  dpkg -i graylog-sidecar_1.0.0-1.rc.1_amd64.deb && \
  rm -f graylog-sidecar_1.0.0-1.rc.1_amd64.deb
RUN \
  wget -q https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-6.6.0-amd64.deb && \
  dpkg -i metricbeat-6.6.0-amd64.deb && \
  rm -f metricbeat-6.6.0-amd64.deb
RUN \
  wget -q https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-6.6.0-amd64.deb && \
  dpkg -i filebeat-6.6.0-amd64.deb && \
  rm -f filebeat-6.6.0-amd64.deb
CMD ["/usr/bin/graylog-sidecar"]
