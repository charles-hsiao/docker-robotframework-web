FROM ubuntu:14.04
MAINTAINER Charles Hsiao <skywoods917@gmail.com>

ENV PHANTOMJS_FILENAME phantomjs-2.1.1-linux-x86_64.tar.bz2
ENV PHANTOMJS_SOURCE https://bitbucket.org/ariya/phantomjs/downloads/${PHANTOMJS_FILENAME}

RUN apt update                                                             && \
    apt install -y python-setuptools                                          \
		   fontconfig                                                 \
		   curl                                                    && \
    easy_install -U pip==9.0.1

RUN curl -L ${PHANTOMJS_SOURCE} > ${PHANTOMJS_FILENAME}                 && \
    tar -C /usr/local/share -xjvf /${PHANTOMJS_FILENAME}                   && \
    ln -s /usr/local/share/phantomjs-2.1.1-linux-x86_64/bin/phantomjs /usr/local/bin && \
    rm -vf /${PHANTOMJS_FILENAME}

ADD requirements.txt /robot/requirements.txt
RUN pip install -r /robot/requirements.txt

