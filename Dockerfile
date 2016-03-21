FROM alpine:3.1
MAINTAINER Anatoly Bubenkov "bubenkoff@gmail.com"
RUN apk add --update py-pip py-fuse fuse-dev fuse bash && rm -rf /var/cache/apk/*
RUN pip install yas3fs
RUN sed -i'' 's/^# *user_allow_other/user_allow_other/' /etc/fuse.conf # uncomment user_allow_other
RUN chmod a+r /etc/fuse.conf # make it readable by anybody, it is not the default on Alpine
VOLUME /mnt
ADD run.sh /
ADD fuse.py /usr/lib/python2.7/site-packages/fuse.py
CMD ["/run.sh"]
