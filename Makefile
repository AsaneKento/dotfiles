SHELL=/bin/zsh

# all command 
.PHONY: all
all: start init brew finish

# start os check
.PHONY: start
start: 
	@echo "\033[0;34mRun build_start.sh\033[0m"
	@.bin/build_start.sh
	@echo "\033[0;34mDone.\033[0m"

# os setting
.PHONY: init
init: 
	@echo "\033[0;34mRun init.sh\033[0m"
	@.bin/init.sh
	@echo "\033[0;34mDone.\033[0m"

# brew install
.PHONY: brew
brew:
	brew/install.sh

# finish check
.PHONY: finish
finish: 
	@echo "\033[0;34mRun build_finish.sh\033[0m"
	@.bin/build_finish.sh
	@echo "\033[0;34mDone.\033[0m"
