if exists('g:vscode')
  xmap gc  <Plug>VSCodeCommentary
  nmap gc  <Plug>VSCodeCommentary
  omap gc  <Plug>VSCodeCommentary
  nmap gcc <Plug>VSCodeCommentaryLine

else

  call plug#begin()
  Plug 'Mofiqul/dracula.nvim'
  Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'} " for status bar
  Plug 'nvim-tree/nvim-web-devicons' " for file icons
  Plug 'nvim-tree/nvim-tree.lua' " for nvim-tree
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " for fuzzy search
  Plug 'junegunn/fzf.vim'
  Plug 'jremmen/vim-ripgrep'
  Plug 'nathanaelkane/vim-indent-guides'
  Plug 'Raimondi/delimitMate'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'TimUntersberger/neogit'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'neovim/nvim-lspconfig'
  Plug 'ojroques/nvim-lspfuzzy'
  Plug 'nvim-lua/completion-nvim'
  call plug#end()

  "nvim-tree config load from init.lua
  :lua require('init')

  " Indention Options
  set autoindent
  filetype plugin on
  filetype indent off

  set smartindent
  set expandtab
  set shiftround
  set shiftwidth=2
  set smarttab
  set tabstop=2

  " Search Options
  set hlsearch
  set ignorecase
  set incsearch
  set smartcase

  " Text Rendering Options
  set display+=lastline
  set encoding=utf-8
  set linebreak
  syntax enable
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


endif
