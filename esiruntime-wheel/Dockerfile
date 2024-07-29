FROM quay.io/pypa/manylinux_2_28_x86_64

RUN yum install -y \
  wget ninja-build autoconf bc bison flex flex-devel perl \
  python3 python3-devel

COPY *.sh /tmp/

# Compile, install, then cleanup gRPC
RUN /tmp/grpc.sh
RUN rm -r /tmp/grpc
