FROM alpine:3.11
RUN mkdir /home/dvws-node
WORKDIR /home/dvws-node
RUN sudo apt-get update && sudo apt-get install -y git python3 build-essential --no-install-recommends
COPY . .
RUN npm install --build-from-source
ADD https://github.com/ufoscout/docker-compose-wait/releases/download/2.7.3/wait /wait
RUN chmod +x /wait
