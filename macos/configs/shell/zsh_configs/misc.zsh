#!/bin/zsh
#
# Miscellaneous configurations for zsh
# This file contains various initialization scripts and tools
#

# WezTerm integration
test -e "${HOME}/.config/wezterm/wezterm.lua" && export WEZTERM_CONFIG_FILE="${HOME}/.config/wezterm/wezterm.lua"

# JINA CLI autocomplete
if [[ -o interactive ]]; then
    compctl -K _jina jina

    _jina() {
      local words completions
      read -cA words

      if [ "${#words}" -eq 2 ]; then
        completions="$(jina commands)"
      else
        completions="$(jina completions ${words[2,-2]})"
      fi

      reply=(${(ps:
:)completions})
    }

    # session-wise fix
    ulimit -n 4096
    export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES
    # default workspace for Executors
    export JINA_DEFAULT_WORKSPACE_BASE="${HOME}/.jina/executor-workspace"
fi

# Docker CLI completions (add to fpath for completion)
fpath=($HOME/.docker/completions $fpath)

# z/zoxide directory navigation (migrated from Oh My Zsh z plugin)
# Prefer zoxide if available, fallback to z
if command -v zoxide &>/dev/null; then
    eval "$(zoxide init zsh)"
elif [[ -f "$HOME/.zsh/plugins/z/z.sh" ]]; then
    source "$HOME/.zsh/plugins/z/z.sh"
elif [[ -f "/usr/local/share/z/z.sh" ]]; then
    source "/usr/local/share/z/z.sh"
fi

# Extract function (migrated from Oh My Zsh extract plugin)
# Usage: extract <archive>
extract() {
    local remove_archive=1
    local success=0
    local extract_dir

    if (( $# == 0 )); then
        cat <<'EOF'
Usage: extract [-option] [file ...]

Options:
    -r, --remove    Remove archive after unpacking.
EOF
    fi

    if [[ "$1" == "-r" ]] || [[ "$1" == "--remove" ]]; then
        remove_archive=1
        shift
    fi

    while (( $# > 0 )); do
        if [[ ! -f "$1" ]]; then
            print_error "extract: '$1' is not a valid file"
            shift
            continue
        fi

        success=0
        extract_dir="${1:r}"
        case "${1:l}" in
            (*.tar.gz|*.tgz) (( $+commands[pigz] )) && { tar -xzf "$1" } || tar -xzf "$1" ;;
            (*.tar.bz2|*.tbz|*.tbz2) tar -xjf "$1" ;;
            (*.tar.xz|*.txz) tar --xz -xf "$1" ;;
            (*.tar.zma|*.tlz) tar --lzma -xf "$1" ;;
            (*.tar) tar -xf "$1" ;;
            (*.gz) (( $+commands[pigz] )) && pigz -d "$1" || gunzip "$1" ;;
            (*.bz2) bunzip2 "$1" ;;
            (*.xz) unxz "$1" ;;
            (*.lzma) unlzma "$1" ;;
            (*.z) uncompress "$1" ;;
            (*.zip|*.war|*.jar|*.sublime-package|*.ipsw|*.xpi|*.apk|*.aar|*.whl) unzip "$1" -d "$extract_dir" ;;
            (*.rar) unrar x -ad "$1" ;;
            (*.7z) 7za x "$1" ;;
            (*.deb)
                mkdir -p "$extract_dir/control"
                mkdir -p "$extract_dir/data"
                cd "$extract_dir"; ar vx "../${1}" > /dev/null
                cd control; tar xzf ../control.tar.gz
                cd ../data; tar xzf ../data.tar.gz
                cd ..; rm *.tar.gz debian-binary
                cd ..
            ;;
            (*.rpm)
                command mkdir -p "$extract_dir" && cd "$extract_dir" && rpm2cpio "../$1" | cpio --quiet -id
            ;;
            (*)
                print_error "extract: '$1' cannot be extracted"
                success=1
            ;;
        esac

        (( success = $success > 0 ? $success : $? ))
        (( $success == 0 )) && (( $remove_archive == 1 )) && rm "$1"
        shift
    done
}

# Set personal token for GitHub CLI
test -e "${HOME}/.config/op/plugins.sh" && source "${HOME}/.config/op/plugins.sh"

# Kiro shell integration
[[ "$TERM_PROGRAM" == "kiro" ]] && . "$(kiro --locate-shell-integration-path zsh)"

# GEMINI_API_KEY - Store securely instead of in .zshrc
# Recommended: Use keychain or separate untracked file
# export GEMINI_API_KEY="your_key_here"

