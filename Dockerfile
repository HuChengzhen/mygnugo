FROM docker.io/library/ubuntu

# Update the package manager and install dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    gcc \
    g++ \
    make \
    git \
    autoconf \
    automake \
    libtool \
    wget \
    curl \
    && apt-get clean


WORKDIR /workspace

COPY gnugo-3.8 /workspace/gnugo-3.8

WORKDIR /workspace/gnugo-3.8

RUN ./configure && make