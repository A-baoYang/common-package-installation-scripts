echo "blacklist nouveau" | sudo tee /etc/modprobe.d/blacklist-nouveau.conf && echo "options nouveau modeset=0" | sudo tee -a /etc/modprobe.d/blacklist-nouveau.conf && sudo update-initramfs -u && sudo modprobe -r nouveau && sudo modprobe nouveau && sudo apt-get update && sudo apt-get install libc-dev -y && sudo apt-get install linux-headers-$(uname -r) -y && wget https://tw.download.nvidia.com/tesla/525.105.17/NVIDIA-Linux-x86_64-525.105.17.run && sudo sh NVIDIA-Linux-x86_64-525.105.17.run --accept-license --no-questions --dkms -s