FROM docker.io/nvidia/cuda:12.8.0-base-ubuntu22.04

# RUN rm /etc/apt/sources.list.d/cuda.list && rm /etc/apt/sources.list.d/nvidia-ml.list

RUN apt-get update && apt-get install -q -y --no-install-recommends \
    ca-certificates \
    curl \
    git \
    python3 \
    python3-dev \
    python3-pip \
    zip \
    libglib2.0-0 \
    libsndfile1 \
    libsm6 \
    libxext6 \
    libxrender-dev \
    libgl1

WORKDIR /home/video_features

COPY requirements.txt .

RUN pip3 install -r requirements.txt

COPY . .
