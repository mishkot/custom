version 7.0
" MK's  vimrc file.
" have setenv TERM xterm-color or export TERM=xterm-color
" run vim -V to see what happens during startup:
imap \ts <C-R>=strftime("%Y-%m-%d %H:%M ")<C-M>

map \p lbi(<Esc>ea)<Esc>       " add parens around a word

""""" ca ... - command-line abbreviations
" Store and read a number of lines in a temporary file.
" :wT  OR  :.,+9 wT  OR :.,'b wT
ca wT w! ~/tmp/vi_temp_save
ca rT r  ~/tmp/vi_temp_save

ca sr syntax reset              " reset syntax
ca um set mouse=                " unset mouse
ca mn set mouse=n               " set mouse in normal mode

set history=50                  " keep 50 lines of command line history
set tabstop=4                   " tabs are 4 characters wide
set expandtab                   " expand tabs as spaces
set shiftwidth=4                " default shift width for autoident
set diffopt=iwhite              " ignore whitespace
set foldmethod=marker           " fold on {{{ and }}}, {{{N also works

set guioptions-=T               " disable toolbar
set autoindent                  " always set autoindenting on
set ruler                       " show the cursor position all the time
set backspace=indent,eol        " in Insert mode the <BS> can delete those
set showcmd                     " display an incomplete command
"set incsearch                  " display the match for a search pattern while typing
set directory=~/tmp//           " in ~/tmp with full path, '%' for '/'

" make p in Visual mode replace the selected text with the "" register.
vnoremap p <Esc>:let current_reg = @"<CR>gvdi<C-R>=current_reg<CR><Esc>

if &t_Co > 2 || has("gui_running")
    syntax on                  " switches on syntax highlighting
    set hlsearch               " highlight the last search item

    hi StatusLineNC gui=none guifg=white guibg=gray80
    hi StatusLine gui=none guifg=gray20 guibg=gray90

    hi StatusLine cterm=none ctermfg=white ctermbg=gray
    hi StatusLineNC cterm=none ctermfg=black ctermbg=gray

    hi Search guibg=yellow
endif

"if has("gui_running")
"  set CourB12
"endif

" variable types
syntax keyword cchar u_long u_short
