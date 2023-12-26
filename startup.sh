sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.13.1
curl https://pyenv.run | bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
ssh-keygen -t ed25519 -C "your_email@example.com"
sudo dnf install -y fcitx5-hangul kcm-fcitx5
python -m ensurepip --upgrade

