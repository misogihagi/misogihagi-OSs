# misogihagi-OSs
customised iso images 
available distro
- Ubuntu

# customised what?
install 
- git
- curl
- ~~nodejs~~volta
- uv
- rust
- go
- docker
- vscode
- forgejo
- vaultwarden
- ghidra
- java
- git-completion
- git-prompt
- starship
- ssh on quic
- cloudflare

## How did keygen
ssh-keygen -t ecdsa -b 512

## Security Strategy
autofs
RAID
LUKS

sudo mount restricted

/etc/docker/daemon.json
```
{
 "data-root": "/restricted/docker"
}
```
