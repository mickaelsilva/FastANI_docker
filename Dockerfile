#USE BLAST BINARIES FROM UMMIDOCK REPO 
FROM ummidock/blast_binaries:2.6.0-binaries 
WORKDIR /NGStools/
RUN apt-get update
RUN apt-get install -y git make libatlas-base-dev wget g++ build-essential autoconf libgsl-dev zlib1g-dev

#GET FastANI
RUN git clone https://github.com/ParBLiSS/FastANI

WORKDIR /NGStools/FastANI
RUN pwd
RUN ls
RUN ./bootstrap.sh
RUN ./configure
RUN make

ENV PATH="/NGStools/"

RUN which fastANI
