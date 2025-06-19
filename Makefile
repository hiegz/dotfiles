default:

#
# Languages
#

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

#
# Tools
#

paru:
	@bash $(HOME)/.kickstart/paru.sh

neovim:
	@bash $(HOME)/.kickstart/neovim.sh

oh-my-zsh:
	@bash $(HOME)/.kickstart/oh-my-zsh.sh

#
# Other
#

desktop:
	@bash $(HOME)/.kickstart/desktop.sh

um3402ya-fix:
	@bash $(HOME)/.kickstart/um3402ya-fix.sh
