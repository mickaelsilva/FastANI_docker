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
RUN ./configure --prefix=/NGStools/
RUN make

#ENV PATH="/NGStools/:${PATH}"
#WORKDIR /NGStools/

#RUN pwd
#RUN fastANI
