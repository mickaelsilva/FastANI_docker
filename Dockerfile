#USE BLAST BINARIES FROM UMMIDOCK REPO 
FROM ummidock/blast_binaries:2.6.0-binaries 
WORKDIR /NGStools/
RUN apt-get update
RUN apt-get install -y git make libatlas-base-dev wget g++ build-essential

#GET training files and Prodigal 
RUN git clone https://github.com/ParBLiSS/FastANI

#INSTALL chewBBACA requirements 
RUN 

WORKDIR /NGStools/FastANI

RUN ./bootstrap.sh
RUN ./configure --prefix=../
RUN make

ENV PATH="/NGStools/"

RUN which fastANI
