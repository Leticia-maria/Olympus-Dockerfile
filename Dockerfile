FROM codercom/enterprise-base:ubuntu
# --- OLYMPUS docker build ---
# --- Setting arguments ---
ARG NAME=olympus
ARG DEBIAN_FRONTEND=noninteractive
ARG TZ=America/Sao_Paulo
USER root 
RUN apt update && \
# --- Installing utilitaries and dependencies ---
    apt-get install -y git && \
    apt-get install -y python3-dev && \
    apt install python3-pip && \
    apt install --yes htop && \
    pip install numpy && \
    pip install pandas && \
    pip install olymp 
USER coder
