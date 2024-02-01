sudo apt upgrade -y && sudo apt update -y
curl -sL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
curl https://sh.rustup.rs -sSf | sudo sh -y
mv .cargo /etc/skel
curl -OL https://go.dev/dl/go1.17.6.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.17.6.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo curl -L https://github.com/docker/compose/releases/download/1.16.1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo apt-get update
echo -e "\n" | sudo apt install -y git curl nodejs docker-ce docker-ce-cli containerd.io ./vscode.deb
sudo apt clean && sudo rm -rf /tmp/* ~/.bash_history && sudo rm /etc/resolv.conf && sudo rm /var/lib/dbus/machine-id && sudo rm /sbin/initctl && sudo dpkg-divert --rename --remove /sbin/initctl
