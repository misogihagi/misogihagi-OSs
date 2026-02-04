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
sudo mkdir -p /etc/skel/.vscode/snippets/
sudo tee /etc/skel/.vscode/snippets/html.code-snippets <<EOF
  "Blank HTML5 Template": {
    "prefix": "blankhtml",
    "body": [
      "<!DOCTYPE html>",
      "<html lang=\"ja\">",
      "<head>",
      "  <meta charset=\"UTF-8\">",
      "  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">",
      "  <meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\">",
      "  <title>${1:Document}</title>",
      "  <meta name=\"description\" content=\"${2:説明文をここに入力}\">",
      "  ",
      "  ",
      "  <meta property=\"og:type\" content=\"website\">",
      "  <meta property=\"og:title\" content=\"${1:Document}\">",
      "  <meta property=\"og:description\" content=\"${2:説明文をここに入力}\">",
      "  <meta property=\"og:url\" content=\"${3:https://example.com}\">",
      "  <meta property=\"og:image\" content=\"${4:ogp-image.jpg}\">",
      "  ",
      "  ",
      "  <link rel=\"stylesheet\" href=\"${5:style.css}\">",
      "  <link rel=\"icon\" href=\"favicon.ico\">",
      "</head>",
      "<body>",
      "  $0",
      "  ",
      "  ",
      "  <script src=\"${6:main.js}\"></script>",
      "</body>",
      "</html>"
    ],
    "description": "モダンなHTML5のボイラープレート（OGP対応）"
  }
}
EOF
