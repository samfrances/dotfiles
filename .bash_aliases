# Delete the previous command of bash history
alias history_scrub_last='history -d $((HISTCMD-2))'

# Random hashbin ref generator
alias randref='openssl rand -base64 32 | sha256sum | cut -c -64'

# pipe output to this to get it into clipboard
alias clipit='xclip -selection c'

# Convert yaml to json
alias yaml2json="python -c 'import sys, yaml, json; json.dump(yaml.load(sys.stdin), sys.stdout)' | jq '.'"

# Strip newline from output
alias strip_newline='tr -d "\n"'

# Seconds since epoch
alias epoch="python -c 'import time; print(int(time.time()))'"

# Seconds since epoch as a float
alias epochf="python -c 'import time; print(time.time())'"

# Play bell sound
alias bell="pacmd play-file /usr/share/sounds/gnome/default/alerts/glass.ogg 1 > /dev/null"

# Alert, with bell sound added
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"; bell'

# Run ssh with specified key, without trying multiple other keys from keyring.
# See: https://serverfault.com/a/989684
alias ssh_with_key='ssh -o "IdentitiesOnly yes" -i'

# Delete all docker containers
docker-delete-containers() { docker rm -f $(docker container ls -aq); }
