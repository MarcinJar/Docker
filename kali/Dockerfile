FROM    kalilinux/kali-rolling:latest
LABEL   Creator: "Marcin Jarmułowski"
RUN     apt-get update && apt-get upgrade -y && apt-get install -y --no-install-recommends ca-certificates
RUN     apt-get install -y --no-install-recommends net-tools
RUN     apt-get install -y --no-install-recommends netdiscover
RUN     apt-get install -y --no-install-recommends nmap
RUN     apt-get install -y --no-install-recommends dsniff
RUN     apt-get install -y --no-install-recommends bettercap 
RUN     apt-get install -y --no-install-recommends metasploit-framework apache2 ssh telnet ettercap-text-only veil 
RUN     apt-get install -y --no-install-recommends powershell-empire msfpc 
RUN     apt-get install -y --no-install-recommends isr-evilgrade weevely netcat-traditional 
RUN     apt-get install -y --no-install-recommends sqlmap hydra nano
RUN     apt-get install -y --no-install-recommends tmux wordlists plocate
EXPOSE  80
CMD     apachectl -D FOREGROUND