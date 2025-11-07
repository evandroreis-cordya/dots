#!/bin/zsh
#
# Starship prompt configuration
# This file replaces Oh My Zsh and initializes Starship prompt
# along with essential standalone zsh plugins
#
# Migration notes:
# - Starship handles prompt rendering (replaces Oh My Zsh themes)
# - Essential plugins are installed standalone in ~/.zsh/plugins/
# - Plugin functionality (aliases, functions) migrated to appropriate config files
#

# Initialize Starship prompt
# Starship will automatically detect and use ~/.config/starship.toml if it exists
if command -v starship &>/dev/null; then
    eval "$(starship init zsh)"
else
    # Fallback message if Starship is not installed
    print_error "Starship is not installed. Run: macos/install/system/starship.zsh"
fi

# Load standalone zsh plugins
# These plugins are installed separately (not via Oh My Zsh)

# zsh-syntax-highlighting - provides syntax highlighting for commands
if [[ -f "$HOME/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]]; then
    source "$HOME/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
elif [[ -f "/usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]]; then
    # Homebrew installation path
    source "/usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
elif [[ -f "/opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]]; then
    # Homebrew Apple Silicon installation path
    source "/opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
fi

# zsh-autosuggestions - provides command autosuggestions based on history
if [[ -f "$HOME/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh" ]]; then
    source "$HOME/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"
    # Configure autosuggestions
    ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#666666,bold"
    ZSH_AUTOSUGGEST_STRATEGY=(history completion)
elif [[ -f "/usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh" ]]; then
    # Homebrew installation path
    source "/usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh"
    ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#666666,bold"
    ZSH_AUTOSUGGEST_STRATEGY=(history completion)
elif [[ -f "/opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh" ]]; then
    # Homebrew Apple Silicon installation path
    source "/opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh"
    ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#666666,bold"
    ZSH_AUTOSUGGEST_STRATEGY=(history completion)
fi

# zsh-completions - additional completion definitions
if [[ -d "$HOME/.zsh/plugins/zsh-completions" ]]; then
    fpath=("$HOME/.zsh/plugins/zsh-completions/src" $fpath)
elif [[ -d "/usr/local/share/zsh-completions" ]]; then
    # Homebrew installation path
    fpath=("/usr/local/share/zsh-completions" $fpath)
elif [[ -d "/opt/homebrew/share/zsh-completions" ]]; then
    # Homebrew Apple Silicon installation path
    fpath=("/opt/homebrew/share/zsh-completions" $fpath)
fi

# Enable command correction (migrated from Oh My Zsh ENABLE_CORRECTION)
setopt CORRECT

# Enable safe paste mode (migrated from Oh My Zsh safe-paste plugin)
autoload -Uz bracketed-paste-magic
zle -N bracketed-paste bracketed-paste-magic

