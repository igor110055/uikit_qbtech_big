#!/usr/bin/fish
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.local/bin/.fzf
~/.local/bin/.fzf/install --xdg --key-bindings --completion --update-rc
sudo apt update -y
sudo apt install neovim -y
sudo wget https://github.com/sharkdp/bat/releases/download/v0.21.0/bat_0.21.0_amd64.deb
sudo wget https://github.com/sharkdp/fd/releases/download/v8.4.0/fd_8.4.0_amd64.deb
sudo apt install ./bat_0.21.0_amd64.deb
sudo apt install ./fd_8.4.0_amd64.deb
fisher install oh-my-fish/theme-scorphish
fisher install jethrokuan/z
fisher install PatrickF1/fzf.fish
sed -i 's/(date +%H:%M:%S)/(TZ=JST-9 date +%H:%M:%S)"|"$FLUTTER_VERSION"|"$ANDROID_BUILD_TOOLS_VERSION/g' ~/.config/fish/functions/fish_right_prompt.fish
sed -i '$ i set -g theme_display_ruby no \n fzf_configure_bindings --directory=\\\\ed --history=\\\\eh --variables=\\\\ev --processes=\\\\ep --git_status=\\\\es --git_log=\\\\el' ~/.config/fish/config.fish
source ~/.config/fish/config.fish
rm ./*.deb
exit 0
