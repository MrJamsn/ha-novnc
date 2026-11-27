FROM python:3.13-alpine

ARG NOVNC_VERSION=1.6.0
ARG WEBSOCKIFY_VERSION=0.13.0

RUN pip install --no-cache-dir "websockify==${WEBSOCKIFY_VERSION}" \
 && wget -qO /tmp/novnc.tar.gz "https://github.com/novnc/noVNC/archive/refs/tags/v${NOVNC_VERSION}.tar.gz" \
 && mkdir -p /opt/novnc \
 && tar -xzf /tmp/novnc.tar.gz -C /opt/novnc --strip-components=1 \
 && rm -rf /tmp/novnc.tar.gz /opt/novnc/tests /opt/novnc/docs /opt/novnc/snap /opt/novnc/utils \
 && cp /opt/novnc/vnc.html /opt/novnc/index.html

COPY defaults.json /opt/novnc/defaults.json
COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD ["/run.sh"]
