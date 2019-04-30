FROM ubuntu:18.04

RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get -y install openssh-server uuid-runtime

RUN mkdir /var/run/sshd

RUN mkdir /app

COPY sshd_config /etc/ssh/
COPY entrypoint.sh /app/
RUN chmod +x /app/entrypoint.sh
RUN mkdir /keys

CMD /app/entrypoint.sh

