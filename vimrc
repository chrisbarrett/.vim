set nocompatible

" execute pathogen#infect()

" Turn on syntax highlighting.
syntax enable
" Turn on file type detection.
filetype plugin indent on
" colorscheme solarized
" Load the matchit plugin.
runtime macros/matchit.vim
" Display incomplete commands.
set showcmd
" Display the mode you're in.
set showmode
" Intuitive backspacing.
set backspace=indent,eol,start
" Handle multiple buffers better.
set hidden
" Enhanced command line completion.
set wildmenu
" Complete files like a shell.
set wildmode=list:longest
" Case-insensitive searching.
set ignorecase
set smartcase
" Show line numbers.
set number
" Show cursor position.
set ruler
" Highlight matches as you type.
set incsearch
set hlsearch
" Enable line wrapping
set wrap
set linebreak
set nolist
" Show 3 lines of context around the cursor.
set scrolloff=3
" Disable beeps
set visualbell
" Disable backups
set nobackup
set nowritebackup
" Keep swap files in one location
set directory=$HOME/.vim/tmp//,.
" Set global tab width.
set tabstop=2
set shiftwidth=2
" Use spaces instead of tabs
set expandtab
" Show the status line all the time
set laststatus=2
" Useful status information at bottom of screen
" set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{fugitive#statusline()}%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P
" Delete trailing whitespace on save.
autocmd BufWritePre * :%s/\s\+$//e
" Tab mappings.
map <leader>tt :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>
map <leader>tf :tabfirst<cr>
map <leader>tl :tablast<cr>
map <leader>tm :tabmove
" Emacs-style completion window.
map <leader>t :FuzzyFinderTextMate<Enter>
" Space to toggle folds.
nnoremap <Space> za
vnoremap <Space> za
" Enable spell checking.
set spell
set spelllang=en_gb
" Configure gundo.
nnoremap <C-x>u :GundoToggle<CR>

" Change cursor shape between insert and normal mode in iTerm2.app
if $TERM_PROGRAM =~ "iTerm"
  if empty($TMUX)
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
  else
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
  endif
endif
