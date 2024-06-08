SHELL=/bin/zsh

# all command 
.PHONY: all
all: start macos shell brew starship volta finish

# macos setting
.PHONY: macos
macos: 
	@echo "\033[0;34mSetting up macOS...\033[0m"
	@macOS/init.sh
	@echo "\033[0;34mDone.\033[0m"

# shell setting
.PHONY: shell
shell: 
	@echo "\033[0;34mSetting up shell...\033[0m"
	@shell/init.sh
	@echo "\033[0;34mDone.\033[0m"

# brew install
.PHONY: brew
brew:
	@echo "\033[0;34mSetting up Homebrew...\033[0m"
	@brew/install.sh
	@echo "\033[0;34mDone.\033[0m"

# volta install
.PHONY: volta
volta:
	@echo "\033[0;34mSetting up Volta...\033[0m"
	@volta/install.sh
	@echo "\033[0;34mDone.\033[0m"

# starship install
.PHONY: starship
starship:
	@echo "\033[0;34mSetting up Starship...\033[0m"
	@starship/init.sh
	@echo "\033[0;34mDone.\033[0m"

# start logo
.PHONY: start
start:
	@utils/start.sh

# finish logo
.PHONY: finish
finish:
	@utils/finish.sh