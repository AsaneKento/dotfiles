SHELL=/bin/zsh

# all command
.PHONY: all
all: start init brew zsh starship nvim finish

# start os check
.PHONY: start
start:
	.bin/build_start.sh

# os setting
.PHONY: init
init:
	.bin/init.sh

# brew install
.PHONY: brew
brew:
	brew/install.sh

# zsh install
.PHONY: zsh
zsh:
	zsh/install.sh

# starship install
.PHONY: starship
starship:
	starship/install.sh

# nvim install
.PHONY: nvim
nvim:
	nvim/install.sh

# bild fin
.PHONY: finish
finish:
	.bin/build_finish.sh
