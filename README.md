# ssh-forward

## Usage

```
docker run -p 8022:22 -e SSH_USER=user_name \
-e SSH_KEY="ssh-rsa...." \
-v /path/to/host/keys:/keys kmconner/ssh-forward
```

