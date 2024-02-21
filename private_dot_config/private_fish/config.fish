if status is-interactive
    # Commands to run in interactive sessions can go here
end

starship init fish | source

zoxide init fish | source

### Exa mappings
abbr ls eza
abbr ll "eza -l"
abbr la "eza -la"

### Git abbreviations
abbr ghc "gh copilot"
abbr ghe "gh copilot explain"
abbr ghs "gh copilot suggest"

## Chezmoi abbreviation
abbr cm "chezmoi"

### Settings for pj package
abbr -a pjo pj open

### Flutter/Android Development
set -gx ANDROID_HOME $HOME/src/android-sdk

### Misc
set -gx EDITOR nvim
set -gx GO_PATH $HOME/.go
set -gx PROJECT_PATHS $HOME/projects

# opam configuration
source /home/bniwa/.opam/opam-init/init.fish >/dev/null 2>/dev/null; or true

# Enable true color support
set -g fish_term24bit true

# pyenv configuration
pyenv init - | source
status --is-interactive; and pyenv virtualenv-init - | source

# Automatically activate virtualenvs
if set -q VIRTUAL_ENV
    if test -e .venv
        vf activate (cat .venv)
    end
end
