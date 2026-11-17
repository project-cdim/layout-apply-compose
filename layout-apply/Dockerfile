FROM redhat/ubi9

ARG PYTHON_VER="3.13.5"

RUN dnf update -y && \
    dnf -y install git wget nano openssl-devel bzip2-devel libffi-devel zlib-devel ca-certificates postgresql-devel automake cmake make gcc sqlite-devel python3-devel procps && \
    dnf clean all

RUN wget -Lk "https://www.python.org/ftp/python/$PYTHON_VER/Python-$PYTHON_VER.tgz" -O /tmp/python.tgz
RUN tar -xzvf /tmp/python.tgz
WORKDIR /Python-$PYTHON_VER
RUN sh -c "./configure" && make -j $(nproc) && make install


WORKDIR /layout-apply

ARG CACHE_BUST=1
COPY layout-apply/layout-apply /layout-apply/layout-apply
RUN echo "Cache busting: $CACHE_BUST" && pip3.13 install /layout-apply/layout-apply

CMD ["sh","-c","exec layoutapply-server"]
