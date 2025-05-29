FROM ubuntu:20.04

ENV TZ=Asia/Tokyo
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev wget libbz2-dev

RUN wget --no-check-certificate https://www.python.org/ftp/python/3.13.3/Python-3.13.3.tgz \
&& tar -xf Python-3.13.3.tgz \
&& cd Python-3.13.3 \
&& ./configure --enable-optimizations\
&& make \
&& make install

RUN apt install -y python3-pip

RUN apt install -y libhdf5-dev 
RUN apt install -y libnetcdf-dev
RUN apt -y install libopencv-dev

WORKDIR /app

COPY . /app

RUN pip install --upgrade pip
RUN pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cpu
RUN python3 -m pip install build
RUN python3 -m build
RUN python3 -m pip install ./dist/wassgridsurface-0.11.0.tar.gz

RUN python3 -m pip install wassncplot

