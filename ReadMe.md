# Wireshark-Docker
Wireshark Docker

# To Build
docker build -t wireshark:{Version You Want} {Path of the Docker File} --no-cache

# To Run
docker run -it --rm --name wireshark -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix --network host --privileged -v /tmp/.X11-unix:/tmp/.X11-unix wireshark:{Version You Want}

# Notes
Runs as non-root user

To set gui connection on host: xhost +

I don't own any of the install packages