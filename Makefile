default:

kickstart:    \
	bash      \
	ruby	  \
	lua       \
	clang     \
	cmake     \
	python    \
	zig       \
	java      \
	php       \
	node 	  \
	rust      \
	paru      \
	sound     \
	video     \
	oh-my-zsh

bash:
	@bash $(HOME)/.kickstart/bash.sh

ruby:
	@bash $(HOME)/.kickstart/ruby.sh

lua:
	@bash $(HOME)/.kickstart/lua.sh

clang:
	@bash $(HOME)/.kickstart/clang.sh

cmake:
	@bash $(HOME)/.kickstart/cmake.sh

python:
	@bash $(HOME)/.kickstart/python.sh

zig:
	@bash $(HOME)/.kickstart/zig.sh

java:
	@bash $(HOME)/.kickstart/java.sh

php:
	@bash $(HOME)/.kickstart/php.sh

node:
	@bash $(HOME)/.kickstart/node.sh

latex:
	@bash $(HOME)/.kickstart/latex.sh

rust:
	@bash $(HOME)/.kickstart/rust.sh

paru:
	@bash $(HOME)/.kickstart/paru.sh

zfs:
	@bash $(HOME)/.kickstart/zfs.sh

dunst:
	@bash $(HOME)/.kickstart/dunst.sh

ufw:
	@bash $(HOME)/.kickstart/ufw.sh

ssh:
	@bash $(HOME)/.kickstart/ssh.sh

network:
	@bash $(HOME)/.kickstart/network.sh

qt:
	@bash $(HOME)/.kickstart/qt.sh

gtk:
	@bash $(HOME)/.kickstart/gtk.sh

fonts:
	@bash $(HOME)/.kickstart/fonts.sh

themes:
	@bash $(HOME)/.kickstart/themes.sh

gui-apps:
	@bash $(HOME)/.kickstart/gui-apps.sh

tui-apps:
	@bash $(HOME)/.kickstart/tui-apps.sh

wayland:
	@bash $(HOME)/.kickstart/wayland.sh

sway:
	@bash $(HOME)/.kickstart/sway.sh

sound:
	@bash $(HOME)/.kickstart/sound.sh

video:
	@bash $(HOME)/.kickstart/video.sh

oh-my-zsh:
	@bash $(HOME)/.kickstart/oh-my-zsh.sh

um3402ya-fix:
	@bash $(HOME)/.kickstart/um3402ya-fix.sh
