FROM quay.io/pypa/manylinux2014_x86_64

RUN yum install -y \
  wget ninja-build autoconf bc bison flex flex-devel perl \
  python3 python3-devel

COPY get-verilator.sh /tmp
RUN cd /tmp && bash get-verilator.sh

COPY get-capnp.sh /tmp
RUN cd /tmp && bash get-capnp.sh

# Install sccache
ENV sccache_version=0.5.4
RUN wget --progress=dot:mega https://github.com/mozilla/sccache/releases/download/v${sccache_version}/sccache-v${sccache_version}-$(arch)-unknown-linux-musl.tar.gz
RUN tar -zxf sccache-v${sccache_version}-$(arch)-unknown-linux-musl.tar.gz
RUN cp sccache-v${sccache_version}-$(arch)-unknown-linux-musl/sccache /usr/bin
