function rm-ssh
    set -l ip (echo $history[1] | awk -F'[@:]' '/@([0-9]{1,3}\.){3}[0-9]{1,3}/ {print $2}')
    ssh-keygen -f '/home/bniwa/.ssh/known_hosts' -R $ip
end
