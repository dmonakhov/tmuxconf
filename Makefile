HOME_DIR?=$(HOME)
INSTALL?=install

.PHONY: install
install: deps
	$(INSTALL) -m 755 tmux.conf $(HOME_DIR)/.tmux.conf
	mkdir -p $(HOME_DIR)/.tmux/plugins
	git clone https://github.com/tmux-plugins/tpm $(HOME_DIR)/.tmux/plugins/tpm
	tmux run-shell $(HOME_DIR).tmux/plugins/tpm/bindings/install_plugins

.PHONY: deps
deps:
	sudo yum install -y ansifilter tmux git

