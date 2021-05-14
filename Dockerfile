FROM ghcr.io/chia-network/chia:latest
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y tzdata screen
RUN pip3 install --force-reinstall git+https://github.com/ericaltendorf/plotman@main
RUN plotman config generate
