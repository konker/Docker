FROM alpine
MAINTAINER Konrad Markus <konker@iki.fi>

RUN apk add --update --progress \
        musl \
        git \
        bash \
        tmux \
        nodejs-lts \
        python3 \
        python3-dev \
    && pip3 install --no-cache-dir --upgrade pip

RUN cd /usr/bin \
        && ln -sf easy_install-3.5 easy_install \
        && ln -sf python3 python \
        && ln -sf pip3 pip

RUN pip3 install awscli
RUN npm install -g serverless

RUN mkdir -p /working
WORKDIR /working

ENV NODE_VERSION 4.4.4

CMD ["bash"]
