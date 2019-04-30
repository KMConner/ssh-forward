# /bin/bash

PASS=$(uuidgen)
useradd -p $PASS $SSH_USER

mkdir -p /home/$SSH_USER/.ssh
echo "command=\"echo 'Command execution is not allowed';exit\" $SSH_KEY" > /home/$SSH_USER/.ssh/authorized_keys

/usr/sbin/sshd -D

