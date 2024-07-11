function tmp
    [ "$argv" = view ] && cd /tmp/workspaces && cd $(ls -t | fzf --preview 'ls -A {}') && return 0
    set r "/tmp/workspaces/$(xxd -l3 -ps /dev/urandom)"
    mkdir -p -p "$r" && pushd "$r"
    if [ $argv[1] ]
        git clone $argv[1]
    end
end
