FROM redhat/ubi9

ARG PYTHON_VER="3.13.0"

RUN dnf -y install git wget nano openssl-devel bzip2-devel libffi-devel zlib-devel ca-certificates \
    postgresql-devel automake cmake make gcc sqlite-devel python3-devel procps

RUN wget -Lk "https://www.python.org/ftp/python/$PYTHON_VER/Python-$PYTHON_VER.tgz" -O /tmp/python.tgz
RUN tar -xzvf /tmp/python.tgz
WORKDIR /Python-$PYTHON_VER
RUN sh -c "./configure"
RUN make -j $(nproc)
RUN make install

WORKDIR /layout-apply

ARG CACHE_BUST=1
RUN git config --global http.sslverify false && git config --global credential.helper store
RUN echo "Cache busting: $CACHE_BUST" && \
    pip3.13 install layoutapply@git+https://github.com/project-cdim/layout-apply.git#egg=layout-apply

CMD ["sh","-c","exec layoutapply-server"]
