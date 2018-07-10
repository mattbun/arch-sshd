FROM base/archlinux

# Update all packages
RUN pacman --noconfirm -Syu

# Install sshd and sudo
RUN pacman --noconfirm -S openssh sudo

# Tell pacman to clean up
RUN pacman -Scc

# Generate ssh keys but they should really be mounted as volumes so they don't keep changing
RUN ssh-keygen -A

# Set up sudo
RUN echo "%wheel ALL=(ALL) ALL" >> /etc/sudoers

# By default listen on port 22
ENV PORT 22
EXPOSE 22

# Put start script into place
COPY start.sh /start.sh
CMD /start.sh
