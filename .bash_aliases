# Delete this very line of bash history
alias no_history='history -d $((HISTCMD-1))'

# Random hashbin ref generator
alias randref='openssl rand -base64 32 | sha256sum | cut -c -64'

# pipe output to this to get it into clipboard
alias clipit='xclip -selection c'

# Convert yaml to json
alias yaml2json="python -c 'import sys, yaml, json; json.dump(yaml.load(sys.stdin), sys.stdout)' | jq '.'"

# Strip newline from output
alias strip_newline='tr -d "\n"'

# Seconds since epoch
alias epoch="python -c 'import time; print int(time.time())'"

# Seconds since epoch as a float
alias epochf="python -c 'import time; print time.time()'"
