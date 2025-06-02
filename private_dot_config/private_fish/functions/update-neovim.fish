function update-neovim
    z neovim
    git pull
    sudo make CMAKE_BUILD_TYPE=Release && sudo make install
    z -
end
