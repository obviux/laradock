FROM selenium/standalone-chrome
MAINTAINER Edmund Luong <edmundvmluong@gmail.com>

USER root
RUN apt-get update && apt-get upgrade -yq
RUN locale-gen da_DK.UTF-8 && apt-get install -y language-pack-da

RUN apt-get install -yq \
    libasound2 libgtk-3-0 libxss1 fonts-liberation libappindicator1 \
    fonts-arphic-ukai fonts-arphic-uming fonts-ipafont-mincho fonts-ipafont-gothic fonts-unfonts-core

# would make sense to have a bash script running on init that executes chromedriver in bg
RUN apt-get -y install ca-certificates zip wget unzip xdg-utils \
    libxpm4 libxrender1 libgtk2.0-0 libnss3 libgconf-2-4 xvfb \
    gtk2-engines-pixbuf xfonts-cyrillic xfonts-100dpi xfonts-75dpi \
    xfonts-base xfonts-scalable x11-apps \
    libx11-xcb1 \
  && wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb \
  && dpkg -i --force-depends google-chrome-stable_current_amd64.deb \
  && apt-get -y -f install \
  && dpkg -i --force-depends google-chrome-stable_current_amd64.deb \
  && rm google-chrome-stable_current_amd64.deb \
  && wget https://chromedriver.storage.googleapis.com/2.37/chromedriver_linux64.zip \
  && unzip chromedriver_linux64.zip \
  && mv chromedriver /usr/local/bin/ \
  && rm chromedriver_linux64.zip

EXPOSE 4444
USER seluser

ADD init.sh /init.sh
CMD ["/init.sh"]
