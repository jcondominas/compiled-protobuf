FROM golang:1.12

RUN apt-get update &&  apt-get -y install autoconf automake libtool curl make g++ unzip
WORKDIR protobuf
RUN wget https://github.com/protocolbuffers/protobuf/releases/download/v3.7.0/protobuf-all-3.7.0.tar.gz
RUN tar -xvzf protobuf-all-3.7.0.tar.gz
WORKDIR protobuf-3.7.0
RUN ./configure
RUN make
RUN make check
RUN make install
RUN ldconfig
