FROM centos:6
MAINTAINER "John Chee" <cheecheeo@gmail.com>
RUN yum -y update; yum clean all
RUN yum -y install gmp; ln -s /usr/lib64/libgmp.so.3 /usr/lib64/libgmp.so.10; ln -s /usr/lib/libgmp.so.3 /usr/lib/libgmp.so.10
RUN curl -sSL https://s3.amazonaws.com/download.fpcomplete.com/centos/6/fpco.repo | tee /etc/yum.repos.d/fpco.repo
RUN yum -y install stack
CMD ["/bin/bash"]
