# ssh-forward

SSH server for port forwarding.

Docker hub url is <https://hub.docker.com/r/kmconner/ssh-forward/>.

## Usage

```
docker run -p 8022:22 -e SSH_USER=user_name \
-e SSH_KEY="ssh-rsa...." \
-v /path/to/host/keys:/keys kmconner/ssh-forward
```

Specify user name and client's public key with
environment variables `SSH_USER` and `SSH_KEY`.  
Host key MUST exist in `/keys/ssh_host_rsa_key` and `/keys/ssh_host_rsa_key.pub`.
