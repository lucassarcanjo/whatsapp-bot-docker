FROM debian:stable

RUN apt-get update && \
    apt-get install -yyq ca-certificates

RUN apt-get install -yyq xvfb ibappindicator1 libasound2 libatk1.0-0 \
    libc6 libcairo2 libcups2 libdbus-1-3 libexpat1 libfontconfig1 \
    libgcc1 libgconf-2-4 libgdk-pixbuf2.0-0 libglib2.0-0 libgtk-3-0 \
    libnspr4 libnss3 libpango-1.0-0 libpangocairo-1.0-0 libstdc++6 \
    libx11-6 libx11-xcb1 libxcb1 libxcomposite1 libxcursor1 libxdamage1 \
    libxext6 libxfixes3 libxi6 libxrandr2 libxrender1 libxss1 libxtst6 \
    gconf-service lsb-release wget xdg-utils fonts-liberation

RUN mkdir /bot-files

WORKDIR /bot-files/

COPY . .

RUN chmod +x ./wbot-linux && \
    chmod +x ./startup.sh

CMD [ "./startup.sh" ]