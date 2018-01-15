HOME_DIR?=$(HOME)
INSTALL?=install

.PHONY: all
all: deps
	$(INSTALL) -m 755 tmux.conf $(HOME_DIR)/.tmux.conf
	tmux run-shell /home/dmon/.tmux/plugins/tpm/bindings/install_plugins

.PHONY: deps
deps:
	sudo yum install -y ansifilter tmux

