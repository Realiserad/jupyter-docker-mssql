FROM mcr.microsoft.com/mssql/server:2019-latest

USER root

COPY start.sh /root/start.sh
RUN chmod +x /root/start.sh

CMD /root/start.sh & /opt/mssql/bin/sqlservr