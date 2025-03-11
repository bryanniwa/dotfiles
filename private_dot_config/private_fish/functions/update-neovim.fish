function update-neovim
    z neovim
    git pull
    sudo make CMAKE_BUILD_TYPE=RelWithDebInfo && sudo make install
    z -
end
