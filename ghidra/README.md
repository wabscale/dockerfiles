# dockerized Ghidra

For when you don't feel like getting pwned by the nsa! Fully containerized, fully neutered.

### Setup

There is no special setup you will need to do (unless you dont have docker and docker-compose).

If you are not running as root, you may need to run `sudo xhost +` before you use the ghidra script. This is an annoyting xorg thing. 

### Running

To run ghidra, all you need to do is type ghidra into your command line. I would recommend putting a symlink to the `ghidra` script somewhere in your $PATH.

### Config

You may want to mount directories in the container. You can add them to the volumes array in the `docker-compose.yml`. I mount `$HOME/ctf` to `/CTF` in the container by default. I mount a `projects` folder in the repo directory to `/root/projects` in the container so you can keep persistent projects.

### Troubleshoot

If you run into issues you can take away the `-d` flag in the last line of the `ghidra` script, then run it again in the command line. This will make the container not daemonize, so you may get some useful error output. 

### Maintainer
- big_J
