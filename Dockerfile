FROM centos
COPY bin /opt/lxcfs/bin
RUN /opt/lxcfs/bin/build.sh
