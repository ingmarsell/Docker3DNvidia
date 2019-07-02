FROM ubuntu

RUN apt update

#Install driver
RUN apt install -y module-init-tools
RUN apt install -y binutils
ADD NVIDIA-DRIVER.run /tmp/NVIDIA-DRIVER.run
RUN sh /tmp/NVIDIA-DRIVER.run -a -N --ui=none --no-kernel-module
RUN rm /tmp/NVIDIA-DRIVER.run 
