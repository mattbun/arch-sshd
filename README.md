# arch-sshd

An arch linux docker container running sshd.

## Configuration

The container can be configured using the following environment variables:

* `USERNAME` - The username to use when logging in, defaults to "docker"
* `PASSWORD` - The password to use when logging in, defaults to "changeme"
* `SHELL` - Which shell to use, defaults to "/bin/bash"
* `UID` - The UID of the login user, by default left blank
* `LOCALE_GEN` - What to put in `/etc/locale.gen`
* `LOCALE_CONF` - What to put in `/etc/locale.conf`
* `PORT` - What port sshd should listen on
