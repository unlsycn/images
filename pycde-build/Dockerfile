FROM quay.io/pypa/manylinux2014_x86_64

RUN yum install -y \
  wget ninja-build autoconf bc bison flex flex-devel perl \
  python3 python3-devel

COPY get-verilator.sh /tmp
RUN cd /tmp && bash get-verilator.sh

COPY get-capnp.sh /tmp
RUN cd /tmp && bash get-capnp.sh
