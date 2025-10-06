default:

#
# Languages
#

bash:
	@bash $(HOME)/.kickstart/bash.sh

go:
	@bash $(HOME)/.kickstart/go.sh

ruby:
	@bash $(HOME)/.kickstart/ruby.sh

lua:
	@bash $(HOME)/.kickstart/lua.sh

html:
	@bash $(HOME)/.kickstart/html.sh

css:
	@bash $(HOME)/.kickstart/css.sh

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

typst:
	@bash $(HOME)/.kickstart/typst.sh

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

npiperelay:
	@bash $(HOME)/.kickstart/npiperelay.sh
