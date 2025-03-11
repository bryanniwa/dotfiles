function file-commits -d "Prints the commits for each file in the current directory"
    set -l directory (pwd)

    git ls-files "$directory" | while read -l file
        echo "File: $file"
        git log -n 1 --color=always --pretty="format:%h - %ad (%ar) - %s" --date=short -- "$file"
        echo ""
    end
end
