" START:设置先导键
let mapleader="\<space>"
" END:

" START:折叠的快捷键
" zc:close 关闭折叠
" zo:open  打开折叠
" zR       全部打开
" zM       全部关闭
" za       切换
" END:

" START:自定义折叠的起始符和终止符 
set foldmethod=marker
set foldmarker=START:,END:
" END:

" START: 使用vim-plug管理插件
call plug#begin('~/.vim/plugged')
"最近打开的文件
Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-thems'
Plug 'yggdroot/indentline'
"plug 'scrooloose/nerdtree'
call plug#end()
" END:

"START: 行号
"设置行号 相反值 nonumber
set number
"设置相对行号
set relativenumber
"END:

"START:高亮
"设置语法高亮 相反值 off
syntax on
"设置搜索高亮
set hlsearch
set incsearch "边输入,边高亮匹配的字符

"设置光标所在行显示下划线
set cursorline
"取消高亮
nnoremap <leader>ch :nohl<cr>
"END:

"START:键盘映射
inoremap jj <esc> 
vnoremap jj <esc>
cnoremap jj <esc>
noremap H ^
noremap L $

"buffer 
noremap <leader>cb <cmd>:bd<CR>

"terminal与normal模式的切换
"<C-\><C-N>
"<C-W>N
tnoremap jj <C-\><C-N>

"窗口切换
noremap <leader>h <c-w><c-h>
noremap <leader>j <c-w><c-j>
noremap <leader>k <c-w><c-k>
noremap <leader>l <c-w><c-l>

tnoremap <c-h> <c-w><c-h>
tnoremap <c-j> <c-w><c-j>
tnoremap <c-k> <c-w><c-k>
tnoremap <c-l> <c-w><c-l>

"窗口移动
noremap <leader>H <c-w>H
noremap <leader>J <c-w>J
noremap <leader>K <c-w>K
noremap <leader>L <c-w>L
" END:

"START:"成对引用
inoremap ' ''<esc>i
inoremap " ""<esc>i
inoremap { {}<esc>i
inoremap [ []<esc>i
inoremap ( ()<esc>i
"END:

"START:leader键映射 
nnoremap <leader>tt :vertical terminal<cr>
nnoremap <leader>1 :!
nnoremap <leader>te :tabe 
nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>
nnoremap <leader>x :x<cr> 
nnoremap <leader>; :
nnoremap <c-s> :so %<cr>
nnoremap <leader>b i #!/bin/bash<CR>
nnoremap <leader>nn :set nonumber norelativenumber<cr>
nnoremap <leader>ss :set number relativenumber<cr>
" 浏览器
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_winsize = 25
nnoremap <space>e <cmd>:Lex<cr> "侧边栏
nnoremap <space>E <cmd>:E<cr>   "整个窗口
" 光标状态
let &t_EI = "\e[2 q"  " 粗光标
let &t_SI = "\e[6 q"  " 细光标
" END:
"gf和gF查找文件的能力

"set path+=**

"START:解决正常模式下中文输入的问题
"移动
nnoremap <c-h>   h
nnoremap <c-j>   j
nnoremap <c-k>   k
nnoremap <c-l>   l
nnoremap <c-g>   gg
nnoremap <c-n>   G
"操作
nnoremap <c-w>   :w<cr>
"END:

"START:vimdiff快捷键跳转
nnoremap <c-[> [c
nnoremap <c-]> ]c
nnoremap <leader>[ [c
nnoremap <leader>] ]c
"END:
 
