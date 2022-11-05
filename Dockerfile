FROM debian:11

RUN apt update \
&& apt install nodejs -yq \
&& apt install npm -yq \
&& apt clean -y


ADD . /definitely-secure-bank/
WORKDIR /definitely-secure-bank

RUN chmod +x definitely-secure-bank/start.sh

EXPOSE 3000
VOLUME /definitely-secure-bank/logs

CMD definitely-secure-bank/start.sh