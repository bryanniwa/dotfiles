function scan_ips
    set -l base $argv[1]
    set -q argv[1]; or set base "192.168.2.0"

    echo "Scanning $base/24"
    nmap -sn -T4 --min-parallelism 100 $base/24
end
