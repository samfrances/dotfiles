# Delete this very line of bash history
alias no_history='history -d $((HISTCMD-1))'

# Random hashbin ref generator
alias randref='openssl rand -base64 32 | sha256sum | cut -c -64'

# pipe output to this to get it into clipboard
alias clipit='xclip -selection c'

