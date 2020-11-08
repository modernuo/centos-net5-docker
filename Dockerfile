FROM centos:8
LABEL Kamron Batman <kamronbatman@users.noreply.github.com>

RUN dnf -y install https://download-ib01.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm \
    && dnf -y update \
    && dnf -y groupinstall 'Development Tools' \
    && dnf -y --enablerepo=PowerTools install \
        libcurl-devel \
        zlib-devel \
        wget \
        which \
        git \
        tar \
        openssl-devel \
        compat-openssl10 \
    && dnf -y clean all