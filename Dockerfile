FROM fusuf/whatsasena:latest

RUN git clone https://github.com/Alexa-official/AQUABOT-MD /root/alexa
WORKDIR /root/alexa/
ENV TZ=Europe/Istanbul
RUN yarn install supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]

