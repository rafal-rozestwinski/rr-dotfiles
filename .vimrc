execute pathogen#infect()
syntax on
filetype plugin indent on

scriptencoding utf-8
set encoding=utf-8

call pathogen#helptags()
" autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
filetype plugin on
set hlsearch
" set tabstop=2
" set shiftwidth=2
" set expandtab
colorscheme evening
let g:go_fmt_command = "goimports"



set number
" set mouse=a
set nofoldenable
set foldlevel=1000
set pastetoggle=<F10>
map <F10> :set paste!<CR>

inoremap <S-Tab> <C-V><Tab>
" set listchars=tab:␉·,trail:·
set listchars=tab:→·,trail:·
set list


map <F4> :NERDTreeToggle<CR>

command NT :NERDTreeToggle

" COmment starts with double quote :)
"     set clipboard=unnamedplus
"     set clipboard=unnamed

" vnoremap <C-c> "*y

" REQUIRES GVIM -->
set clipboard=unnamedplus
vnoremap <F7> "+y
inoremap <F8> <ESC>"+p
noremap <F8> "+p
" ----------------

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


" A fairly well-known mapping to toggle boolean options is:
"    map <F2> :set wrap!<CR>
" Nicer, more elaborate versions of this idea exist, such as:
"   nnoremap <F8> :set wrap! wrap?<CR>
"   imap <F8> <C-O><F8>
" which displays the current value of the option after toggling it, and works both in normal and insert mode. However, that definition quickly clutters up your vimrc, and is a pain to edit due to the redundant occurrences of the toggle key and option. Wrapping the definition in a function solves the problem, and makes the toggle definition a one-line operation again:
" Map key to toggle opt
"function MapToggle(key, opt)
"  let cmd = ':set '.a:opt.'! \| set '.a:opt."?\<CR>"
"  exec 'nnoremap '.a:key.' '.cmd
"  exec 'inoremap '.a:key." \<C-O>".cmd
"endfunction
"command -nargs=+ MapToggle call MapToggle(<f-args>)

map <F3> :set list!<CR>

command LST :set list!

map <F2> :set number!<CR>

command NUM :set number!

" To indent only 2 spaces (for YAML):
set ts=4
" set et
set noet
set sw=4

set guifont="DejaVu Sans Mono 11"
colorscheme delek

" autocmd VimEnter * SyntasticToggleMode " disable syntastic by default
let g:syntastic_mode_map = { 'mode': 'passive' }
" let g:syntastic_disabled_filetypes=['html']


" :setlocal spell spelllang=pl
" :setlocal spell spelllang=en_us
"
"
"
"
"
"

" map <F9> :w!<CR>:!aspell check %<CR>:e! %<CR>



set tags=./tags,tags;
" set tags+=tags,./tags
" set tags+=tags,/srv/http/dev/proj/tags

" highlight NonText guifg=#4a4a59
" highlight SpecialKey guifg=#4a4a59

" hi NonText ctermfg=2 guifg=gray

hi SpecialKey ctermfg=233 guifg=#121212

" let g:autotagTagsFile=".tags"

set term=xterm
set modeline

