ARG BASE_IMAGE=mcr.microsoft.com/mssql/server:2019-latest

FROM $BASE_IMAGE

USER root

COPY start.sh /root/start.sh
RUN chmod +x /root/start.sh

CMD /root/start.sh & /opt/mssql/bin/sqlservr