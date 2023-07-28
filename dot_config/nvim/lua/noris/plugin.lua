local vim = vim

local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

 --Plug 'test/oliver-test'

 --Plug 'scrooloose/nerdtree'
 Plug 'nvim-tree/nvim-web-devicons' -- for file icons
 Plug 'nvim-tree/nvim-tree.lua'
 Plug 'junegunn/fzf.vim'
 --Plug 'neoclide/coc.nvim', {'branch': 'release'}
 Plug 'neovim/nvim-lspconfig'
 Plug 'christoomey/vim-tmux-navigator'
 Plug 'itchyny/lightline.vim'
 Plug 'itchyny/vim-gitbranch'
 Plug 'tpope/vim-fugitive'
 Plug 'junegunn/gv.vim'
 Plug 'sindrets/diffview.nvim'
 Plug 'nvim-lua/plenary.nvim'
 Plug 'nvim-telescope/telescope.nvim'
 Plug 'majutsushi/tagbar'
 Plug 'milkypostman/vim-togglelist'
 Plug 'sirver/ultisnips'
 Plug 'honza/vim-snippets'
 Plug 'quangnguyen30192/cmp-nvim-ultisnips'
 Plug 'pwntester/octo.nvim'

 Plug 'maxmellon/vim-jsx-pretty'
 --Plug 'joshdick/onedark.vim'
 --Plug 'ayu-theme/ayu-vim'
 --Plug 'morhetz/gruvbox'
 Plug('folke/tokyonight.nvim', { branch = 'main' })
 Plug 'EdenEast/nightfox.nvim'

 Plug 'mengelbrecht/lightline-bufferline'
 Plug 'liuchengxu/vista.vim'
 Plug 'udalov/kotlin-vim'
 Plug 'tpope/vim-surround'
 Plug 'vimwiki/vimwiki'
 --Plug 'easymotion/vim-easymotion'
 Plug 'ggandor/leap.nvim'
 Plug 'tpope/vim-repeat'
 Plug 'szw/vim-maximizer'
 -- Plug 'MattesGroeger/vim-bookmarks'
 -- Plug 'tom-anders/telescope-vim-bookmarks.nvim'
 Plug 'preservim/nerdcommenter'

 Plug 'hrsh7th/cmp-nvim-lsp'
 Plug 'hrsh7th/nvim-cmp'
 Plug 'hrsh7th/cmp-buffer'
 Plug 'hrsh7th/cmp-path'
 Plug 'hrsh7th/cmp-cmdline'

 --Plug 'L3MON4D3/LuaSnip'
 --Plug 'saadparwaiz1/cmp_luasnip'

 Plug 'ray-x/lsp_signature.nvim'

 -- Plug 'nvim-treesitter/nvim-treesitter'
 Plug 'tomlion/vim-solidity'
 Plug('fatih/vim-go', { ['do']= ':GoUpdateBinaries' })
 Plug 'jparise/vim-graphql'
 Plug 'elixir-editors/vim-elixir'

 Plug 'wellle/context.vim'

vim.call('plug#end')
