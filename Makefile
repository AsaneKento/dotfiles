SHELL=/bin/zsh

# all command
.PHONY: all
all: start init finish

# start os check
.PHONY: start
start:
	.bin/build_start.sh

# os setting
.PHONY: init
init:
	.bin/init.sh

.PHONY: brew
brew:
	brew/install.sh

# bild fin
.PHONY: finish
finish:
	.bin/build_finish.sh
