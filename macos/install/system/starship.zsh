#!/bin/zsh
#
# Install and configure Starship
#
# This script installs Starship prompt and configures it with recommended settings
# It also installs essential standalone zsh plugins
#

# Get the directory of the current script
SCRIPT_DIR=${0:a:h}
source "${SCRIPT_DIR}/../../../utils.zsh"
source "${SCRIPT_DIR}/../utils.zsh"
source "${SCRIPT_DIR}/../utils.zsh" 2>/dev/null || true  # Source local utils if available

# Check if Starship is already installed
check_starship_installed() {
    if command -v starship &>/dev/null; then
        return 0
    else
        return 1
    fi
}

# Install Starship
install_starship() {
    print_info "Installing Starship..."

    # Check if Homebrew is available
    if command -v brew &>/dev/null; then
        # Install via Homebrew (macOS)
        if brew list starship &>/dev/null; then
            print_success "Starship (already installed via Homebrew)"
        else
            brew_install "Starship" "starship"
        fi
    else
        # Install via official install script
        if [[ -f "$HOME/.local/bin/starship" ]]; then
            print_success "Starship (already installed)"
        else
            print_info "Installing Starship via official install script..."
            curl -sS https://starship.rs/install.sh | sh > /dev/null 2>&1
            print_result $? "Starship"
        fi
    fi
}

# Install standalone zsh plugins
install_standalone_plugins() {
    print_info "Installing standalone zsh plugins..."

    # Create zsh plugins directory if it doesn't exist
    mkdir -p "$HOME/.zsh/plugins"

    # Install zsh-syntax-highlighting
    if [[ ! -d "$HOME/.zsh/plugins/zsh-syntax-highlighting" ]]; then
        print_info "Installing zsh-syntax-highlighting..."
        git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME/.zsh/plugins/zsh-syntax-highlighting" --quiet
        print_result $? "zsh-syntax-highlighting plugin"
    else
        print_success "zsh-syntax-highlighting (already installed)"
    fi

    # Install zsh-autosuggestions
    if [[ ! -d "$HOME/.zsh/plugins/zsh-autosuggestions" ]]; then
        print_info "Installing zsh-autosuggestions..."
        git clone https://github.com/zsh-users/zsh-autosuggestions.git "$HOME/.zsh/plugins/zsh-autosuggestions" --quiet
        print_result $? "zsh-autosuggestions plugin"
    else
        print_success "zsh-autosuggestions (already installed)"
    fi

    # Install zsh-completions
    if [[ ! -d "$HOME/.zsh/plugins/zsh-completions" ]]; then
        print_info "Installing zsh-completions..."
        git clone https://github.com/zsh-users/zsh-completions.git "$HOME/.zsh/plugins/zsh-completions" --quiet
        print_result $? "zsh-completions plugin"
    else
        print_success "zsh-completions (already installed)"
    fi

    print_success "Standalone plugins installation completed"
}

# Main function
main() {
    # Check if script is being run with root privileges
    if [[ $EUID -eq 0 ]]; then
        print_error "This script should not be run with sudo or as root"
        exit 1
    fi

    # Check if Starship is already installed
    if check_starship_installed; then
        print_success "Starship is already installed"
    else
        install_starship
    fi

    # Install standalone plugins
    install_standalone_plugins

    print_info "Starship installation complete"
    print_info "Please restart your terminal or run 'source ~/.zshrc' to apply changes"
    print_info "Starship configuration file: ~/.config/starship.toml"

    return 0
}

# Run the script
main "$@"

