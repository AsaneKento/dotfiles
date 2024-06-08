SHELL=/bin/zsh

# all command 
.PHONY: all
all: start macos brew finish

# macos setting
.PHONY: macos
macos: 
	@echo "\033[0;34mSetting up macOS...\033[0m"
	@macOS/init.sh
	@echo "\033[0;34mDone.\033[0m"

# brew install
.PHONY: brew
brew:
	@echo "\033[0;34mSetting up Homebrew...\033[0m"
	@brew/install.sh
	@echo "\033[0;34mDone.\033[0m"

# start logo
.PHONY: start
start:
	@utils/start.sh

# finish logo
.PHONY: finish
finish:
	@utils/finish.sh