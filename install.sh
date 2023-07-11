#!/bin/bash

mkdir -p ~/.config/bin
sudo mv ipa.sh /usr/local/bin/ipa

# Add target functions to .zshrc
echo "
function settarget(){
  ip_address=\$1
  machine_name=\$2
  echo \"\$ip_address \$machine_name\" > ~/.config/bin/target
}

function cleartarget(){
  echo '' > ~/.config/bin/target
}
" >> ~/.zshrc

echo "Installation completed successfully..."
