# General
alias cat='bat --paging=never'
alias cp='gcp -iv'

# ls > eza
# Other aliases handled by exa plugin
# https://github.com/zap-zsh/exa (now uses eza)
alias l='ll'

# lazydocker
alias lzd='lazydocker'

# Finder
# You can also toggle hidden files from the Finder GUI with Cmd + Shift + .
alias saf='defaults write com.apple.finder AppleShowAllFiles TRUE; killall Finder'
alias haf='defaults write com.apple.finder AppleShowAllFiles FALSE; killall Finder'
alias o='open . &'
