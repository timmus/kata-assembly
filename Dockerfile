FROM ubuntu

RUN apt-get update
RUN apt-get install -y build-essential
RUN apt-get install -y wget

# install nasm
RUN wget https://www.nasm.us/pub/nasm/releasebuilds/2.14.02/nasm-2.14.02.tar.gz
RUN tar xzf nasm-2.14.02.tar.gz

WORKDIR /nasm-2.14.02
RUN ["./configure"]
RUN ["make"]
RUN ["make", "install"]

# cleanup
WORKDIR /
RUN ["rm", "nasm-2.14.02.tar.gz"]

ENV PATH="/nasm-2.14.02:${PATH}"

CMD ["/bin/bash"]
