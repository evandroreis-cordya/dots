#!/usr/bin/env zsh

# Get the directory of the current script
SCRIPT_DIR=${0:a:h}
source "${SCRIPT_DIR}/../utils.zsh"
source "${SCRIPT_DIR}/../utils.zsh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Add warning function if not already defined
print_warning() {
    print_in_yellow "  [!] $1
"
}

print_in_purple "
   Development Tools

"

# IDEs and Editors
if brew list --cask | grep -q "visual-studio-code"; then
    print_success "Visual Studio Code (already installed)"
else
    brew install --cask visual-studio-code &> /dev/null
    print_result $? "Visual Studio Code"
fi

# Cursor IDE
if brew list --cask | grep -q "cursor"; then
    print_success "Cursor IDE (already installed)"
else
    brew install --cask cursor &> /dev/null
    print_result $? "Cursor IDE"
fi

# NeoVim
if brew list | grep -q "^neovim$"; then
    print_success "NeoVim (already installed)"
else
    brew install neovim &> /dev/null
    print_result $? "NeoVim"
fi

if brew list --cask | grep -q "android-studio"; then
    print_success "Android Studio (already installed)"
else
    brew install --cask android-studio &> /dev/null
    print_result $? "Android Studio"
fi

# WezTerm installation moved to specialized script: wezterm.zsh
# This prevents duplication and ensures comprehensive configuration
print_info "WezTerm installation handled by specialized script: wezterm.zsh"

if brew list --cask | grep -q "docker"; then
    print_success "Docker (already installed)"
else
    brew install --cask docker &> /dev/null
    print_result $? "Docker"
fi

# Development tools
if brew list | grep -q "^git$"; then
    print_success "Git (already installed)"
else
    brew install git &> /dev/null
    print_result $? "Git"
fi

if brew list | grep -q "^gh$"; then
    print_success "GitHub CLI (already installed)"
else
    brew install gh &> /dev/null
    print_result $? "GitHub CLI"
fi

if brew list | grep -q "^awscli$"; then
    print_success "AWS CLI (already installed)"
else
    brew install awscli &> /dev/null
    print_result $? "AWS CLI"
fi

if brew list | grep -q "^azure-cli$"; then
    print_success "Azure CLI (already installed)"
else
    brew install azure-cli &> /dev/null
    print_result $? "Azure CLI"
fi

if brew list | grep -q "^terraform$"; then
    print_success "Terraform (already installed)"
else
    brew install terraform &> /dev/null
    print_result $? "Terraform"
fi

if brew list | grep -q "^kubernetes-cli$"; then
    print_success "kubectl (already installed)"
else
    brew install kubernetes-cli &> /dev/null
    print_result $? "kubectl"
fi

# Database tools installation moved to specialized script: databasetools.zsh
# This prevents duplication and ensures comprehensive database configuration
print_info "Database tools installation handled by specialized script: databasetools.zsh"

# API Development
if brew list --cask | grep -q "postman"; then
    print_success "Postman (already installed)"
else
    brew install --cask postman &> /dev/null
    print_result $? "Postman"
fi

if brew list | grep -q "^httpie$"; then
    print_success "HTTPie (already installed)"
else
    brew install httpie &> /dev/null
    print_result $? "HTTPie"
fi

# Image tools
if brew list | grep -q "^imagemagick$"; then
    print_success "ImageMagick (already installed)"
else
    brew install imagemagick &> /dev/null
    print_result $? "ImageMagick"
fi

# Package managers and build tools
if brew list | grep -q "^maven$"; then
    print_success "Maven (already installed)"
else
    brew install maven &> /dev/null
    print_result $? "Maven"
fi

if brew list | grep -q "^gradle$"; then
    print_success "Gradle (already installed)"
else
    brew install gradle &> /dev/null
    print_result $? "Gradle"
fi

# Programming languages installation moved to specialized dev_langs/ scripts
# This prevents duplication and ensures proper language-specific configuration
print_info "Programming languages installation handled by specialized dev_langs/ scripts"

# Shell tools
if brew list | grep -q "^tmux$"; then
    print_success "tmux (already installed)"
else
    brew install tmux &> /dev/null
    print_result $? "tmux"
fi

if brew list | grep -q "^the_silver_searcher$"; then
    print_success "The Silver Searcher (already installed)"
else
    brew install the_silver_searcher &> /dev/null
    print_result $? "The Silver Searcher"
fi

if brew list | grep -q "^fzf$"; then
    print_success "fzf (already installed)"
else
    brew install fzf &> /dev/null
    print_result $? "fzf"
fi

if brew list | grep -q "^jq$"; then
    print_success "jq (already installed)"
else
    brew install jq &> /dev/null
    print_result $? "jq"
fi

if brew list | grep -q "^yq$"; then
    print_success "yq (already installed)"
else
    brew install yq &> /dev/null
    print_result $? "yq"
fi

print_in_green "
  Development tools setup complete!
"

print_in_yellow "
  Restart your shell to apply all changes.
"
