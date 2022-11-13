if exists('g:vscode')
  xmap gc  <Plug>VSCodeCommentary
  nmap gc  <Plug>VSCodeCommentary
  omap gc  <Plug>VSCodeCommentary
  nmap gcc <Plug>VSCodeCommentaryLine

else

  call plug#begin()
  Plug 'Mofiqul/dracula.nvim'
  Plug 'kyazdani42/nvim-web-devicons' " lua, for status bar
  Plug 'nvim-tree/nvim-web-devicons' " for file icons
  Plug 'nvim-tree/nvim-tree.lua' " for nvim-tree
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " for fuzzy search
  Plug 'junegunn/fzf.vim'
  Plug 'jremmen/vim-ripgrep'
  Plug 'nathanaelkane/vim-indent-guides'
  Plug 'Raimondi/delimitMate'
  Plug 'TimUntersberger/neogit'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'neovim/nvim-lspconfig'
  Plug 'ojroques/nvim-lspfuzzy'
  Plug 'nvim-lua/completion-nvim'
  Plug 'tpope/vim-repeat'
  Plug 'pappasam/nvim-repl'
  Plug 'numToStr/Navigator.nvim'
  Plug 'itspriddle/vim-marked'
  Plug 'vimwiki/vimwiki'
  Plug 'tools-life/taskwiki'
  Plug 'powerman/vim-plugin-AnsiEsc'
  Plug 'majutsushi/tagbar'
  Plug 'xarthurx/taskwarrior.vim'
  call plug#end()

  "Remap leaderkey
  let mapleader = ","
  "nvim-tree config load from init.lua
  :lua require('init')

  " Indention Options
  set autoindent
  set nocompatible
  filetype plugin on
  filetype indent off
  let g:indent_guides_enable_on_vim_startup = 1

  set smartindent
  set expandtab
  set shiftround
  set shiftwidth=2
  set smarttab
  set tabstop=2

  " No anoying swap file
  set noswapfile

  " Search Options
  set hlsearch
  set ignorecase
  set incsearch
  set smartcase

  " Text Rendering Options
  set display+=lastline
  set encoding=utf-8
  set linebreak
  syntax on
  set wrap

  " User Interface Options
  set laststatus=2
  set ruler
  set wildmenu
  set tabpagemax=50
  colorscheme dracula
  set background=dark
  set cursorline
  set number
  set relativenumber
  set nornu
  set noerrorbells
  set visualbell
  set mouse=a
  set title
  set clipboard=unnamed,unnamedplus

  " Code Folding Options
  set foldmethod=indent
  set foldnestmax=3
  set nofoldenable

  " Miscellaneous Options
  set autoread
  set backspace=indent,eol,start
  set confirm
  set hidden
  set history=1000
  set nomodeline
  set spell


    "Key mapping for perl
  nnoremap <leader><leader>e :ReplToggle<CR>
  nmap <leader>e <Plug>ReplSendLine
  vmap <leader>e <Plug>ReplSendVisual

  "Vim wiki config to use markdown files
  let wiki_1 = {}
  let wiki_1.path = '~/vimwiki/'
  let wiki_1.syntax = 'markdown'
  let wiki_1.ext = '.md'
  let g:vimwiki_list = [wiki_1]
  let g:vimwiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
  let g:vimwiki_global_ext = 0

  "FZF keymapping
  nnoremap <C-f> :Files<Cr>
  "Quick ripgrep word under cursor
  command! -bang -nargs=0 RgCWord
    \ call fzf#vim#grep(
    \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(expand('<cword>')), 1,
    \   fzf#vim#with_preview(), <bang>0)

  nnoremap <C-g> :RgCWord<CR>


endif

