FROM n8nio/n8n:latest

USER root

WORKDIR /home/node/packages/cli
ENTRYPOINT []

COPY ./start.sh /

RUN chmod +x /start.sh

CMD ["/start.sh"]
