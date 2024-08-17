Neovim setup files for easy replication

Theme: One Dark Pro 
Font: Nerd Font (JetBrains Mono)
## (Optional) Neovim install steps for Linux AppImage
`sudo apt update`  

`sudo apt upgrade`  

`curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage`  
`chmod u+x nvim.appimage`  
`./nvim.appimage`  

Run the following commands if the ./nvim.appimage command fails, try:  
`./nvim.appimage --appimage-extract`  
`./squashfs-root/AppRun --version`  

Optional: exposing nvim globally.  
`sudo mv squashfs-root /`  
`sudo ln -s /squashfs-root/AppRun /usr/bin/nvim`  
`nvim`  

If we got errors for existing or this file /usr/bin/nvim  
`sudo rm /usr/bin/nvim`  
`sudo ln -s /squashfs-root/AppRun /usr/bin/nvim`  
`nvim`  

[Stack Overflow thread](https://stackoverflow.com/questions/77530952/how-to-fix-the-version-issue-between-neovim-and-lazyvim-on-ubuntu-20-or-22-versi)

## Installing NerdFonts (JetBrains)
```
wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/JetBrainsMono.zip \
&& cd ~/.local/share/fonts \
&& unzip JetBrainsMono.zip \
&& rm JetBrainsMono.zip \
&& fc-cache -fv
```

