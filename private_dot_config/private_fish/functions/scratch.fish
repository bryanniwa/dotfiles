function scratch
    if test "$argv[1]" = view
        pushd /tmp/scratch
        set target (ls -t | fzf --preview 'bat -p --color=always {}')
        if test -n "$target"
            nvim -- $target
        end
        popd
        return 0
    end
    set r /tmp/scratch/
    set file "$r/$(xxd -l3 -ps /dev/urandom)"
    mkdir -p -- "$r" && nvim -- "$file"
end
