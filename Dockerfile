FROM ubuntu:18.04
USER 99:100
RUN apt-get update
RUN apt-get install wget -y
RUN wget https://github.com/xaya/xaya/releases/download/v1.1/Xaya_Linux_static_1.1.zip
RUN apt-get install unzip -y
RUN unzip /Xaya_Linux_static_1.1.zip
RUN chmod +x /Xaya_Linux_static_11/*
RUN mv /Xaya_Linux_static_11/* /usr/local/bin

