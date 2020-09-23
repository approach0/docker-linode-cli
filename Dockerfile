from debian:buster

RUN sed -i s@/deb.debian.org/@/mirrors.aliyun.com/@g /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y python3 python3-pip
RUN pip3 install linode-cli

COPY ./linode-cli.cfg.template /root/.config/linode-cli
COPY ./wrap-run.sh /root

CMD /root/wrap-run.sh
