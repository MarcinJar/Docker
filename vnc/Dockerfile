# Use the official Kali Linux image
FROM kalilinux/kali-rolling

# Install necessary packages
RUN apt-get update && \
    apt-get install -y tightvncserver xfce4

# Set up VNC server
RUN echo "#!/bin/bash \n \
startxfce4 & \n \
tightvncserver :0" > /root/start-vnc.sh && \
    chmod +x /root/start-vnc.sh

# Expose VNC port
EXPOSE 5900

# Set up the startup script
# COPY start-vnc.sh /usr/local/bin/start-vnc.sh
# RUN chmod +x /usr/local/bin/start-vnc.sh

# Set the startup script as the entrypoint
ENTRYPOINT ["/usr/local/bin/start-vnc.sh"]
