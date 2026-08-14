set belloff=all
set nowrap
set number
set relativenumber
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=0

set notermguicolors

augroup NoColors
   autocmd!
   autocmd BufEnter * syntax off
   autocmd BufEnter * highlight clear
   autocmd BufEnter * highlight Normal          ctermfg=white guifg=white
   autocmd BufEnter * highlight NonText         ctermfg=white guifg=white
   autocmd BufEnter * highlight SpecialKey      ctermfg=white guifg=white
   autocmd BufEnter * highlight LineNr          ctermfg=white guifg=white
   autocmd BufEnter * highlight CursorLineNr    ctermfg=white guifg=white
   autocmd BufEnter * highlight StatusLine      ctermfg=white guifg=white
   autocmd BufEnter * highlight StatusLineNC    ctermfg=white guifg=white
   autocmd BufEnter * highlight ExtraWhitespace ctermfg=white guifg=white cterm=underline gui=underline
   autocmd BufEnter * match     ExtraWhitespace /\s\+$/
augroup END
