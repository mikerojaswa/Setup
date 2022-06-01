#!/bin/bash

# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install openssh
brew install openssh
export PATH=$(brew --prefix openssh)/bin:$PATH

# Add keys
ssh-keygen -K
mv id_ed25519_sk_rk.pub ~/.ssh/id_ed25519_sk.pub
mv id_ed25519_sk_rk ~/.ssh/id_ed25519_sk

cd ~
git clone git@github.com:mikerojaswa/dotfiles.git
cd ~/dotfiles

echo Done!
