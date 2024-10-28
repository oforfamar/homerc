#!/bin/bash

# Update and upgrade all packages
sudo apt update && sudo apt upgrade -y

# install feh and its dependencies
sudo apt install -y feh

# Create the slideshow directory and the start.sh file
mkdir -p ~/Documents/slideshow
cat <<EOL > ~/Documents/slideshow/start.sh
#!/bin/bash
sleep 10 & feh -r ~/Pictures -D20 -F -z -Z --hide-pointer
EOL

# make start.sh executable
chmod +x ~/Documents/slideshow/start.sh

# Create slideshow.desktop file in autostart
mkdir -p ~/.config/autostart
cat <<EOL > ~/.config/autostart/slideshow.desktop
[Desktop Entry]
Type=Application
Exec=/home/mihai/Documents/slideshow/start.sh
EOL

echo "Setup complete. Slideshow will start on boot."
