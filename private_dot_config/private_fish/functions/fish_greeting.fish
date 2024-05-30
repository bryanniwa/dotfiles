function fish_greeting
    echo Welcome Bryan
    date
    if [ -e ~/TODO.md ]
        bat -p ~/TODO.md
    end
end
