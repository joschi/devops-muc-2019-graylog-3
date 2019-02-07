FROM graylog/graylog:3.0.0-rc.2-1
RUN apt update && apt install -y libglib2.0-0 && apt clean && rm -rf /var/lib/apt/lists/*
RUN \
  curl -S -s -L -O https://downloads.graylog.org/releases/graylog-enterprise/graylog-enterprise-plugins-3.0.0-rc.2.tgz && \
  tar --strip-components=1 -xzf graylog-enterprise-plugins-3.0.0-rc.2.tgz -C /usr/share/graylog && \
  rm -f graylog-enterprise-plugins-3.0.0-rc.2.tgz
RUN \
  mkdir /var/lib/maxmind && \
  cd /var/lib/maxmind && \
  curl -S -s -L -O http://geolite.maxmind.com/download/geoip/database/GeoLite2-City.tar.gz && \
  tar -xzf GeoLite2-City.tar.gz --strip-components 1 && \
  rm -f GeoLite2-City.tar.gz
