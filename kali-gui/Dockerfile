# Use the official Kali Linux Docker image
FROM kalilinux/kali-rolling

# Install necessary packages including xrdp and xfce
RUN apt-get update && apt-get install -y \
    xrdp \
    xfce4 \
    xfce4-goodies \
    sudo \
    dbus-x11 \
    x11-xserver-utils \
    && apt-get clean

# Create a user with sudo privileges
RUN useradd -m -s /bin/bash kali && echo "kali:kali" | chpasswd && adduser kali sudo

# Configure XRDP to use XFCE
RUN echo "startxfce4" > /etc/skel/.Xclients && \
    chmod +x /etc/skel/.Xclients && \
    mkdir -p /home/kali/.config && \
    echo "xfce4-session" > /home/kali/.config/xrdp.ini && \
    chown -R kali:kali /home/kali/.config

# Expose the RDP port
EXPOSE 3389

# Start the xrdp service
CMD ["/usr/sbin/xrdp", "-nodaemon"]
