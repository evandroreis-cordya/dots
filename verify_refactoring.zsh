#!/usr/bin/env zsh

# Verification script for dotfiles → dots refactoring
# This script checks for remaining "dotfiles" references that need to be updated

set -e

# Colors for output
RED='\033[0;31m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Counters
CRITICAL_COUNT=0
DOCUMENTATION_COUNT=0
OPTIONAL_COUNT=0
INTENTIONAL_COUNT=0

echo "${BLUE}=== dotfiles → dots Refactoring Verification ===${NC}\n"

# Function to check for patterns
check_pattern() {
    local pattern=$1
    local category=$2
    local description=$3
    local exclude_pattern=${4:-""}
    
    echo "${YELLOW}Checking: ${description}${NC}"
    
    local results
    if [ -n "$exclude_pattern" ]; then
        results=$(grep -r -i -n --include="*.zsh" --include="*.ps1" --include="*.md" --include="*.lua" --include="*.json" "$pattern" . 2>/dev/null | grep -v "$exclude_pattern" | grep -v ".git" || true)
    else
        results=$(grep -r -i -n --include="*.zsh" --include="*.ps1" --include="*.md" --include="*.lua" --include="*.json" "$pattern" . 2>/dev/null | grep -v ".git" || true)
    fi
    
    if [ -n "$results" ]; then
        echo "${RED}Found issues:${NC}"
        echo "$results" | while IFS= read -r line; do
            echo "  $line"
            case $category in
                critical)
                    CRITICAL_COUNT=$((CRITICAL_COUNT + 1))
                    ;;
                documentation)
                    DOCUMENTATION_COUNT=$((DOCUMENTATION_COUNT + 1))
                    ;;
                optional)
                    OPTIONAL_COUNT=$((OPTIONAL_COUNT + 1))
                    ;;
                intentional)
                    INTENTIONAL_COUNT=$((INTENTIONAL_COUNT + 1))
                    ;;
            esac
        done
        echo ""
    else
        echo "${GREEN}✓ No issues found${NC}\n"
    fi
}

# Phase 1: Repository references
echo "${BLUE}--- Phase 1: Repository References ---${NC}\n"
check_pattern "evandroreis-cordya/dotfiles" "critical" "GitHub repository references"

# Phase 2: Path references
echo "${BLUE}--- Phase 2: Path References ---${NC}\n"
check_pattern "~/dotfiles|\$HOME/dotfiles|HOME/dotfiles" "critical" "Hardcoded path references to dotfiles directory"
check_pattern "USERPROFILE.*dotfiles" "critical" "Windows path references"

# Phase 3: Environment variable defaults
echo "${BLUE}--- Phase 3: Environment Variable Defaults ---${NC}\n"
check_pattern 'DOTFILES.*dotfiles|dotfiles.*DOTFILES' "critical" "DOTFILES variable defaults" "DOTFILES_[A-Z_]"

# Phase 4: Log file names
echo "${BLUE}--- Phase 4: Log File Names ---${NC}\n"
check_pattern "dotfiles-.*\.log" "optional" "Log file naming patterns"

# Phase 5: Backup directories
echo "${BLUE}--- Phase 5: Backup Directories ---${NC}\n"
check_pattern "Backups/dotfiles|/Backups/dotfiles" "optional" "Backup directory references"

# Phase 6: Sudoers configuration
echo "${BLUE}--- Phase 6: Sudoers Configuration ---${NC}\n"
check_pattern "dotfiles_timeout" "optional" "Sudoers file references"

# Phase 7: Documentation
echo "${BLUE}--- Phase 7: Documentation ---${NC}\n"
check_pattern "dotfiles" "documentation" "Documentation references" "DOTFILES_[A-Z_]|dotfiles-[0-9]|dotfiles_timeout|Backups/dotfiles"

# Phase 8: Banner/Display text
echo "${BLUE}--- Phase 8: Banner/Display Text ---${NC}\n"
check_pattern "'Dotfiles'|\"dotfiles\"|'dotfiles'" "optional" "Banner and display text"

# Phase 9: URL references
echo "${BLUE}--- Phase 9: URL References ---${NC}\n"
check_pattern "github.com.*dotfiles|github.com/.*/dotfiles" "critical" "GitHub URL references"

# Summary
echo "${BLUE}=== Summary ===${NC}\n"
echo "${RED}Critical issues: ${CRITICAL_COUNT}${NC}"
echo "${YELLOW}Documentation issues: ${DOCUMENTATION_COUNT}${NC}"
echo "${YELLOW}Optional issues: ${OPTIONAL_COUNT}${NC}"
echo "${GREEN}Intentional references (DOTFILES_*): ${INTENTIONAL_COUNT}${NC}\n"

# File name check
echo "${BLUE}--- File Names Check ---${NC}\n"
DOTFILES_FILES=$(find . -name "*dotfiles*" -type f 2>/dev/null | grep -v ".git" || true)
if [ -n "$DOTFILES_FILES" ]; then
    echo "${RED}Files with 'dotfiles' in name:${NC}"
    echo "$DOTFILES_FILES"
else
    echo "${GREEN}✓ No files with 'dotfiles' in name${NC}"
fi

echo "\n${BLUE}=== Verification Complete ===${NC}"

