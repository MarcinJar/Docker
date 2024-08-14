FROM    ubuntu
LABEL   Creator: "Marcin Jarmułowski"
RUN     apt-get update && apt-get upgrade -y && apt-get install -y apache2
EXPOSE  80
CMD     apachectl -D FOREGROUND