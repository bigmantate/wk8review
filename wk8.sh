#!/bin/sh
#Wk 8 Running script

echo "Let's see what we are working with"
ls -l
echo "Creating three files with touch command"
touch news.txt weather.txt delete.txt
echo "Give these files some standard output"
echo "It's gonna rain" > weather.txt
echo "Chaos everywhere" > news.txt
echo "We will create directories for our new files"
mkdir stuff things delete
echo "Moving files to their new home"
mv weather.txt things
mv news.txt things
echo "Changing into the directory things"
cd things
echo "Using pwd command to show working directory"
pwd
echo "Note the difference between the files"
diff news.txt weather.txt
echo "Lets get back home"
cd ..
echo "Cleaning up what we don't need"
rmdir delete
rm delete.txt
echo "Checking networking using grep command to find whats RUNNING"
ifconfig | grep -w "RUNNING"
echo "The manual pages are a great resource"
man bash
echo "Lets move on to some different chapters material"
echo "frisbee in a black hole" > /dev/null
echo "Let's see whats going on in the world of devices"
cd /dev; ls -l
echo "An even closer look at our devices"
lsblk
echo "Using the udevadm command to show the path and other attributes"
udevadm info --query=all --name=/dev/sda
echo "We will combine multiple commands and create something cool"
cd ~; pwd; dd if=/dev/zero of=./64MB.img bs=1M count=64
echo "We use hexdump now to get a hexadecimal view of what we did"
hexdump ./64MB.img | less
echo "We will make a file system onto our image"
mkfs -t ext4 ./64MB.img
echo "Making a mount point a home for it and mounting"
mkdir /mnt/tmp
sudo mount ./64MB.img /mnt/tmp
mount; df -h
lsblk
echo "Inserting a little something for someone to find"
cd /tmp/tmp; ls
echo "Heres Waldo" > ./waldo.txt
sudo umount /mnt/tmp
echo "Now to look at our file to look for our little signature"
hexdump --canonical ./64MB.img | less
echo "A visual lesson in links"
mkdir dir1 dir2
echo "bat" > dir1/anmfly
echo "cat" > dir1/anmwalk
echo "sloth" > dir1/anmlay
echo "fish" > dir2/anmswim
echo "Making the hard link"
ln dir1/anmlay dir2/anmfight
echo "Making a listing to look at inode ID's for link made"
ls -iR dir*
echo "We will take a closer look at our system now"
sleep 2
dmesg | less
echo "Now looking at the kernel parameters and other specifics"
cat /proc/cmdline
echo "Looking at the kernel system log file"
cat /var/log/kern.log
echo "We will check the system runlevel"
sleep 1.5
who -r
echo "Showing what runlevel is currently"
sleep 1.5
runlevel
echo "Now we start running a service unit"
systemctl start echo.socket
echo "Stopping the socket unit"
systemctl stop echo.socket
echo "That was the script for now, I think I will add some improvements"




