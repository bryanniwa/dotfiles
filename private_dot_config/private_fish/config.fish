if status is-interactive
    # Commands to run in interactive sessions can go here
end

starship init fish | source

zoxide init fish | source

### Navigation Helpers
alias ... "cd ../.."
alias .... "cd ../../.."

### Exa mappings
abbr ls eza
abbr ll "eza -l"
abbr la "eza -la"

### Copilot CLI Aliases
if gh extension list | grep -q github/gh-copilot
    function copilot_shell_suggest
        gh copilot suggest -t shell "$argv"
    end
    alias css copilot_shell_suggest

    # Function to handle Git command suggestions
    function copilot_git_suggest
        gh copilot suggest -t git "$argv"
    end

    alias cgs copilot_git_suggest

    # Function to handle GitHub CLI command suggestions
    function copilot_gh_suggest
        gh copilot suggest -t gh "$argv"
    end

    alias cghs copilot_gh_suggest

    # Functiont to handle Copilot explain
    function copilot_explain
        gh copilot explain "$argv"
    end

    alias ce copilot_explain
end

## Chezmoi abbreviation
abbr cm chezmoi

### Settings for pj package
abbr -a pjo pj open

### Flutter/Android Development
set -gx ANDROID_HOME $HOME/src/android-sdk

### Misc
set -gx EDITOR nvim
set -gx GO_PATH $HOME/.go

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
