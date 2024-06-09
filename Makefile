SHELL=/bin/zsh

# all command 
.PHONY: all
all: start macos shell brew volta starship git vim docker finish

##
## Setup Default
##

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

##
## Apps install
##

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

##
## Apps Setting
##

# starship setting
.PHONY: starship
starship:
	@echo "\033[0;34mSetting up Starship...\033[0m"
	@starship/init.sh
	@echo "\033[0;34mDone.\033[0m"

# git setting
.PHONY: git
git:
	@echo "\033[0;34mSetting up Git...\033[0m"
	@git/init.sh
	@echo "\033[0;34mDone.\033[0m"

# vim setting
.PHONY: vim
vim:
	@echo "\033[0;34mSetting up Vim...\033[0m"
	@vim/init.sh
	@echo "\033[0;34mDone.\033[0m"

# docker setting
.PHONY: docker
docker:
	@echo "\033[0;34mSetting up Docker...\033[0m"
	@docker/init.sh
	@echo "\033[0;34mDone.\033[0m"

##
## oother scripts
##

# start logo
.PHONY: start
start:
	@utils/start.sh

# finish logo
.PHONY: finish
finish:
	@utils/finish.sh