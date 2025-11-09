# Homebrew Installation Reference

This document lists every Homebrew command invoked by the macOS installer scripts, grouped by the setup categories defined in `macos/install`. Each block is ready to copy into a terminal; run the commands that match the groups you plan to install.

## Essentials

### System

-   `brew install starship` — consistent prompt across shells.

### Dev Langs

-   `brew install go` — Go toolchain for backend and tooling.
-   `brew install python` — Default Python runtime for automation.
-   `brew install temurin` — LTS Java runtime via Eclipse Temurin.

### Dev Tools

-   `brew install git` — Core version control CLI.
-   `brew install --cask cursor` — AI-assisted IDE tuned for rapid coding.
-   `brew install --cask visual-studio-code` — Versatile editor with rich extension ecosystem.
-   `brew install --cask jetbrains-toolbox` — JetBrains IDE launcher and updater.
-   `brew install pre-commit` — Enforces automated checks before commits.

### AI Tools

-   `brew install --cask chatgpt` — Desktop access to ChatGPT.
-   `brew install --cask diffusionbee` — Local Stable Diffusion UI for image generation.
-   `brew install --cask ollama` — Local model runner for offline experimentation.

### CLI Tools

-   `brew install bat` — Syntax-highlighted file viewer.
-   `brew install fzf` — Fuzzy finder for interactive workflows.
-   `brew install ripgrep` — Fast recursive search with regex.
-   `brew install tmux` — Terminal multiplexer for persistent sessions.
-   `brew install wget` — Reliable CLI downloader.

### Cloud Tools

-   `brew install awscli` — Essential AWS automation toolkit.
-   `brew install azure-cli` — CLI access to Azure resources.
-   `brew install docker` — Container runtime and management CLI.
-   `brew tap hashicorp/tap` — Homebrew Hashicorp's Repository.
-   `brew install hashicorp/tap/terraform` — Tool to build, change, and version infrastructure.
-   

### Daily Tools

-   `brew install --cask 1password` — Secure credential manager.
-   `brew install --cask alfred` — Productivity launcher for macOS.
-   `brew install --cask notion` — Workspace for notes and knowledge.
-   `brew install --cask slack` — Team collaboration hub.
-   `brew install --cask zoom` — Meetings and conferencing.

### Media Tools

-   `brew install --cask figma` — Collaborative interface design.
-   `brew install --cask blender` — Full-featured 3D creation suite.
-   `brew install --cask vlc` — Media playback across formats.
-   `brew install ffmpeg` — Command-line media transcoding toolkit.

## System

```bash
brew install starship  # Cross-shell prompt
```

## Dev Langs

```bash
brew install --cask intellij-idea-ce  # Language tool: Intellij Idea Ce app
brew install --cask temurin  # Language tool: Temurin app
brew install autoconf  # GNU configure script generator
brew install automake  # GNU makefile generator
brew install boost  # C++ libraries collection
brew install carthage  # iOS/macOS dependency manager
brew install clang-format  # C-family code formatter
brew install cmake  # Cross-platform build system
brew install composer  # PHP dependency manager
brew install cppcheck  # C/C++ static analyzer
brew install doxygen  # Code documentation generator
brew install fastlane  # Mobile deployment automation
brew install gcc  # GNU Compiler Collection
brew install gdb  # GNU debugger
brew install go  # Go programming language
brew install gradle  # JVM build automation
brew install kotlin  # Kotlin programming language
brew install libtool  # GNU library support scripts
brew install llvm  # LLVM compiler infrastructure
brew install make  # GNU make build utility
brew install mint  # Swift package runner
brew install mysql  # MySQL database server
brew install ninja  # Ninja build system
brew install openssl  # OpenSSL TLS toolkit
brew install pipx  # Python app installer
brew install pkg-config  # Pkg-config compiler flags helper
brew install pyenv  # Python version manager
brew install pyenv-virtualenv  # Pyenv virtualenv plugin
brew install python  # Python programming language
brew install rbenv  # Ruby version manager
brew install ruby-build  # Ruby build tool
brew install sourcery  # Swift code generator
brew install swiftformat  # Swift formatter
brew install swiftlint  # Swift linter
brew install symfony-cli  # Symfony CLI
brew install xcbeautify  # Xcode build log formatter
brew install xcodegen  # Xcode project generator
```

## Dev Tools

```bash
brew install --cask android-studio  # Developer tool: Android Studio studio app
brew install --cask clion  # Developer tool: Clion IDE
brew install --cask cursor  # Developer tool: Cursor IDE
brew install --cask datagrip  # Developer tool: Datagrip IDE
brew install --cask dbeaver-community  # Developer tool: Dbeaver Community IDE
brew install --cask docker  # Developer tool: Docker IDE
brew install --cask fork  # Developer tool: Fork IDE
brew install --cask gitkraken  # Developer tool: Gitkraken IDE
brew install --cask goland  # Developer tool: Goland IDE
brew install --cask gpg-suite  # Developer tool: Gpg Suite IDE
brew install --cask intellij-idea  # Developer tool: Intellij Idea IDE
brew install --cask jetbrains-space  # JetBrains platform app: Space
brew install --cask jetbrains-toolbox  # JetBrains platform app: Toolbox
brew install --cask mongodb-compass  # Developer tool: Mongodb Compass IDE
brew install --cask mysqlworkbench  # Developer tool: Mysqlworkbench IDE
brew install --cask postman  # Developer tool: Postman IDE
brew install --cask pycharm  # Developer tool: Pycharm IDE
brew install --cask rider  # Developer tool: Rider IDE
brew install --cask rubymine  # Developer tool: Rubymine IDE
brew install --cask sourcetree  # Developer tool: Sourcetree IDE
brew install --cask sqlitestudio  # Developer tool: Sqlitestudio IDE
brew install --cask visual-studio-code  # Developer tool: Visual Studio Code studio app
brew install --cask webstorm  # Developer tool: Webstorm IDE
brew install diff-so-fancy  # Git diff highlighter
brew install git  # Git version control
brew install git-crypt  # Git encryption helper
brew install git-delta  # Git pager with syntax highlight
brew install git-filter-repo  # Git history rewriting tool
brew install git-flow  # Git flow helper
brew install git-gui  # Git GUI client
brew install git-interactive-rebase-tool  # Interactive rebase TUI
brew install git-lfs  # Git Large File Storage
brew install git-secrets  # Secrets scanner for git
brew install libpq  # PostgreSQL client libraries
brew install mysql-shell  # MySQL Shell client
brew install neo4j  # Neo4j graph database
brew install neovim  # Neovim text editor
brew install pinentry-mac  # Pinentry for macOS prompts
brew install pre-commit  # Pre-commit hook manager
brew tap qdrant/qdrant
brew tap redis-stack/redis-stack
brew tap weaviate/tap
```

## AI Tools

```bash
brew install --cask chatgpt  # AI tool: Chatgpt application
brew install --cask diffusionbee  # AI tool: Diffusionbee application
brew install --cask geekbench-ai  # AI tool: Geekbench AI application
brew install --cask jupyter-notebook-viewer  # AI tool: Jupyter Notebook Viewer notebook viewer
brew install --cask jupyterlab  # AI tool: Jupyterlab application
brew install --cask lm-studio  # Local AI runner: Lm Studio
brew install --cask macai  # AI tool: Macai application
brew install --cask mem  # AI tool: Mem application
brew install --cask mendeley-reference-manager  # AI tool: Mendeley Reference Manager management tool
brew install --cask ollama  # Local AI runner: Ollama
brew install --cask prowritingaid  # AI tool: Prowritingaid application
brew install --cask raindropio  # AI tool: Raindropio application
brew install --cask runway  # AI tool: Runway application
brew install --cask synthesia  # AI tool: Synthesia application
brew install --cask zotero  # AI tool: Zotero application
brew install pytorch  # AI tool: Pytorch tool
brew install tensorflow  # AI tool: Tensorflow tool
```

## CLI Tools

```bash
brew install bat  # Syntax-highlighted cat clone
brew install bottom  # Terminal system monitor
brew install btop  # Resource monitor
brew install curl  # HTTP transfer tool
brew install duf  # Disk usage analyzer
brew install dust  # Disk usage visualizer
brew install fd  # Fast find alternative
brew install fpart  # File partitioner
brew install fzf  # Fuzzy finder
brew install glances  # System monitoring tool
brew install heroku  # Heroku CLI
brew install htop  # Interactive process viewer
brew install httpie  # HTTP request CLI
brew install inxi  # System information tool
brew install jq  # JSON processor
brew install ncdu  # Disk usage explorer
brew install netcat  # Netcat networking utility
brew install netlify-cli  # Netlify CLI
brew install newman  # Postman collection runner
brew install nmap  # Network scanner
brew install p7zip  # 7-Zip utilities
brew install procs  # Process viewer
brew install redis  # Redis data store
brew install ripgrep  # Fast search tool
brew install rsync  # File sync utility
brew install screenfetch  # System info script
brew install tcpdump  # Network packet analyzer
brew install tmux  # Terminal multiplexer
brew install tree  # Directory tree viewer
brew install unzip  # ZIP extractor
brew install vim  # Vim text editor
brew install wget  # HTTP download tool
brew install wireshark  # Packet analyzer
brew install xclip  # X11 clipboard tool
brew install xsel  # X11 selection tool
brew install zip  # ZIP archiver
brew install zoxide  # Smart cd command
```

## Web Tools

```bash
brew install kafka  # Apache Kafka
brew install kubectl  # kubectl CLI
brew install minikube  # Local Kubernetes cluster
brew install node  # Node.js runtime
brew install rabbitmq  # RabbitMQ message broker
brew install yarn  # Yarn package manager
```

## Daily Tools

```bash
brew install --cask 1password  # Password manager
brew install --cask alfred  # Launcher productivity app
brew install --cask android-file-transfer  # Daily app: Android File Transfer productivity app
brew install --cask anydesk  # Remote desktop client
brew install --cask brave-browser  # Privacy-focused browser
brew install --cask caffeine  # Keep-awake utility
brew install --cask discord  # Team chat client
brew install --cask firefox  # Mozilla Firefox browser
brew install --cask goodsync  # File sync manager
brew install --cask google-chrome  # Google Chrome browser
brew install --cask handbrake  # Video transcoder
brew install --cask inkscape  # Vector graphics editor
brew install --cask karabiner-elements  # Keyboard remapper
brew install --cask little-snitch  # Network monitor
brew install --cask malwarebytes  # Malware scanner
brew install --cask microsoft-edge  # Microsoft Edge browser
brew install --cask microsoft-office  # Microsoft Office suite
brew install --cask microsoft-teams  # Teams collaboration client
brew install --cask obsidian  # Markdown knowledge base
brew install --cask opera  # Opera browser
brew install --cask parallels  # Virtualization platform
brew install --cask rectangle  # Window manager
brew install --cask slack  # Team chat client
brew install --cask snagit  # Screen capture tool
brew install --cask stats  # Menu bar stats monitor
brew install --cask sublime-text  # Sublime Text editor
brew install --cask teamviewer  # Remote support client
brew install --cask telegram  # Telegram messenger
brew install --cask the-unarchiver  # Archive extractor
brew install --cask transmission  # BitTorrent client
brew install --cask veracrypt  # Disk encryption utility
brew install --cask wezterm  # WezTerm terminal
brew install --cask whatsapp  # WhatsApp desktop client
brew install --cask zoom  # Video meetings client
brew install brotli  # Brotli compression tools
brew install xz  # LZMA compression tools
brew install zopfli  # Zopfli compression utilities
brew install zstd  # Zstandard compression
```

## Media Tools

```bash
brew install --cask adobe-creative-cloud  # Media tool: Adobe Creative Cloud cloud tool
brew install --cask adobe-creative-cloud-cleaner-tool  # Media tool: Adobe Creative Cloud Cleaner Tool cloud tool
brew install --cask asana  # Media tool: Asana creative app
brew install --cask audacity  # Media tool: Audacity creative app
brew install --cask colorsnapper  # Media tool: Colorsnapper creative app
brew install --cask comfyui  # Media tool: Comfyui creative app
brew install --cask descript  # Media tool: Descript creative app
brew install --cask dropbox  # Cloud sync client
brew install --cask figma  # Collaborative design app
brew install --cask framer  # Media tool: Framer creative app
brew install --cask freecad  # Media tool: Freecad creative app
brew install --cask fuse  # Media tool: Fuse creative app
brew install --cask gimp  # GNU image editor
brew install --cask godot  # Media tool: Godot creative app
brew install --cask google-drive  # Google Drive sync client
brew install --cask iconjar  # Media tool: Iconjar creative app
brew install --cask imageoptim  # Media tool: Imageoptim creative app
brew install --cask licecap  # Media tool: Licecap creative app
brew install --cask notion  # Workspace organizer
brew install --cask obs  # Media tool: Obs creative app
brew install --cask openscad  # Media tool: Openscad creative app
brew install --cask principle  # Media tool: Principle creative app
brew install --cask processing  # Media tool: Processing creative app
brew install --cask scrivener  # Media tool: Scrivener creative app
brew install --cask sip  # Media tool: Sip creative app
brew install --cask sketch  # Media tool: Sketch creative app
brew install --cask spotify  # Music streaming client
brew install --cask touchdesigner  # Media tool: Touchdesigner creative app
brew install --cask ultimaker-cura  # Media tool: Ultimaker Cura creative app
brew install --cask unity-hub  # Media tool: Unity Hub creative app
brew install --cask vlc  # VLC media player
brew install --cask zeplin  # Media tool: Zeplin creative app
brew install ffmpeg  # Media tool: Ffmpeg tool
brew install imagemagick  # Image manipulation toolkit
brew install webp  # Media tool: Webp tool
```

## Creative Tools

```bash
brew install --cask blender  # Creative suite: Blender creative app
brew install --cask sketchup  # Creative suite: Sketchup creative app
brew install --cask unity  # Creative suite: Unity creative app
```

## Cloud Tools

```bash
brew install aws-cdk  # AWS Cloud Development Kit
brew install aws-sam-cli  # AWS SAM CLI
brew install awscli  # AWS CLI toolkit
brew install azure-cli  # Azure CLI toolkit
brew install docker  # Docker CLI
brew install firebase-cli  # Firebase CLI
brew install google-cloud-sdk  # Google Cloud SDK
brew install helm  # Kubernetes Helm CLI
brew install kubernetes-cli  # Kubernetes CLI tools
brew install oci-cli  # Oracle Cloud CLI
```

## App Store

```bash
brew install --cask bartender  # Security app: Bartender security app
brew install --cask burp-suite  # Security app: Burp Suite security app
brew install --cask cleanmymac  # Security app: Cleanmymac security app
brew install --cask cutter  # Security app: Cutter security app
brew install --cask dash  # Security app: Dash security app
brew install --cask iina  # Security app: Iina security app
brew install --cask kap  # Security app: Kap security app
brew install --cask keepassxc  # Security app: Keepassxc security app
brew install --cask maltego  # Security app: Maltego security app
brew install --cask micro-snitch  # Security app: Micro Snitch security app
brew install --cask mullvadvpn  # Security app: Mullvadvpn security app
brew install --cask owasp-zap  # Security app: Owasp Zap security app
brew install --cask protonvpn  # Security app: Protonvpn security app
brew install --cask raycast  # Security app: Raycast security app
brew install --cask signal  # Security app: Signal security app
brew install --cask typora  # Security app: Typora security app
brew install --cask wireshark  # Security app: Wireshark security app
brew install foremost  # Security app: Foremost tool
brew install gnupg  # OpenPGP encryption suite
brew install hashcat  # Password recovery tool
brew install ipfs  # IPFS peer-to-peer storage
brew install john-jumbo  # John the Ripper suite
brew install keybase  # Security app: Keybase tool
brew install mas  # Mac App Store CLI
brew install mkcert  # Security app: Mkcert tool
brew install nikto  # Web server scanner
brew install osquery  # Endpoint querying tool
brew install radare2  # Security app: Radare2 tool
brew install sleuthkit  # Security app: Sleuthkit tool
brew install sqlmap  # Security app: SQLMap tool
brew install tor  # Security app: Tor tool
brew install torsocks  # Security app: Torsocks tool
brew install trivy  # Security app: Trivy tool
brew install wireguard-tools  # Security app: Wireguard Tools tool
brew install yara  # Security app: Yara tool
brew install ykman  # Security app: Ykman tool
```
