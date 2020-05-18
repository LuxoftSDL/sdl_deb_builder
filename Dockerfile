FROM debian

RUN apt update && apt install -yq \
    sudo \
    git \
    wget \
    vim \
    psmisc \
    locales \
    gnupg \
    gnupg2 \
    automake \
    ccache \
    g++-7 \
    gcc-7 \
    cmake \
    apt-transport-https \
    libexpat1-dev \
    libssl-dev \
    libbluetooth3 \
    libbluetooth-dev \
    libudev-dev \
    libusb-1.0 \
    bluez-tools \
    sqlite3 \
    libsqlite3-dev \
    build-essential \
    python3-dev \
    autotools-dev \
    libicu-dev \
    libbz2-dev \
    python3-pip \
    python3-setuptools \
    lintian

RUN update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-7 10 && \
    update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-7 10 && \
    update-alternatives --install /usr/bin/cc cc /usr/bin/gcc 30 && \
    update-alternatives --set cc /usr/bin/gcc && \
    update-alternatives --install /usr/bin/c++ c++ /usr/bin/g++ 30 &&  \
    update-alternatives --set c++ /usr/bin/g++

ADD build_deb_packages.sh /build_deb_packages.sh
CMD ["bash", "/build_deb_packages.sh"]
