FROM debian:stable

RUN apt-get update && \
    apt-get install -yq xvfb 

RUN mkdir /bot-files

WORKDIR /bot-files/

COPY . .

RUN chmod +x ./wbot-linux && \
    chmod +x ./startup.sh

CMD [ "./startup.sh" ]