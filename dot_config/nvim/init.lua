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
Plug 'MattesGroeger/vim-bookmarks'
Plug 'tom-anders/telescope-vim-bookmarks.nvim'
Plug 'preservim/nerdcommenter'

Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'

--Plug 'L3MON4D3/LuaSnip'
--Plug 'saadparwaiz1/cmp_luasnip'

Plug 'ray-x/lsp_signature.nvim'

--Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'tomlion/vim-solidity'
Plug('fatih/vim-go', { ['do']= ':GoUpdateBinaries' })
Plug 'elixir-editors/vim-elixir'

vim.call('plug#end')


local opt = vim.opt
opt.number = true
opt.relativenumber = true
opt.showmode = false

opt.clipboard = 'unnamed'

opt.rtp:append('/opt/homebrew/opt/fzf')

opt.hidden = true
opt.swapfile = false

opt.wrap = false

opt.ignorecase = true
opt.smartcase = true

opt.cursorline = true
opt.termguicolors = true

vim.api.nvim_command('syntax on')
vim.api.nvim_command('colorscheme nightfox')

opt.showtabline = 2
opt.smartindent = true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
--set expandtab

vim.api.nvim_command('command -nargs=* Glg Git! log --graph --pretty=format:\'\\%h - (\\%ad)\\%d \\%s <\\%an>\' --abbrev-commit --date=local <args>')

opt.compatible = false

vim.api.nvim_command('filetype plugin on')
vim.api.nvim_command('set grepprg=rg\\ --vimgrep\\ --no-heading\\ --smart-case')
vim.api.nvim_command('set grepformat=%f:%l:%c:%m')

local keymap = vim.keymap
keymap.set('n', '<C-n>', ':NvimTreeToggle<CR>')
keymap.set('n', '<leader>r', ':NvimTreeRefresh<CR>:TagbarForceUpdate<CR>')
keymap.set('n', '<leader>n', ':NvimTreeFindFile<CR>')

vim.api.nvim_command('highlight NvimTreeFolderIcon guibg=blue')

require'nvim-tree'.setup {
  disable_netrw        = false,
  hijack_netrw         = true,
  open_on_setup        = false,
  ignore_buffer_on_setup = false,
  ignore_ft_on_setup   = {},
  --auto_close           = false,
  auto_reload_on_write = true,
  open_on_tab          = false,
  hijack_cursor        = false,
  update_cwd           = false,
  hijack_unnamed_buffer_when_opening = false,
  hijack_directories   = {
    enable = true,
    auto_open = true,
  },
  diagnostics = {
    enable = false,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  },
  update_focused_file = {
    enable      = false,
    update_cwd  = false,
    ignore_list = {}
  },
  system_open = {
    cmd  = nil,
    args = {}
  },
  filters = {
    dotfiles = false,
    custom = {}
  },
  git = {
    enable = true,
    ignore = false,
    timeout = 500,
  },
  view = {
    width = 30,
    --height = 30,
    hide_root_folder = false,
    side = 'left',
    preserve_window_proportions = false,
    mappings = {
      custom_only = false,
      list = {}
    },
    number = false,
    relativenumber = false,
    signcolumn = "yes"
  },
  trash = {
    cmd = "trash",
    require_confirm = true
  },
  actions = {
    change_dir = {
      enable = true,
      global = false,
    },
    open_file = {
      quit_on_open = false,
      resize_window = false,
      window_picker = {
        enable = true,
        chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
        exclude = {
          filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame", },
          buftype  = { "nofile", "terminal", "help", },
        }
      }
    }
  },
  log = {
    enable = false,
    truncate = false,
    types = {
      all = false,
      config = false,
      git = false,
    },
  },
  renderer = {
        icons = {
      	show = {
      	  file = true,
      	  git = true,
      	  folder = true,
      	  folder_arrow = true,
      	},
          padding = ' ',
      	symlink_arrow = ' >> ',
      	glyphs = {
       default = "",
       symlink = "",
       git = {
         unstaged = "✗",
         staged = "✓",
         unmerged = "",
         renamed = "➜",
         untracked = "★",
         deleted = "",
         ignored = "◌"
         },
       folder = {
         arrow_open = "",
         arrow_closed = "",
         default = "",
         open = "",
         empty = "",
         empty_open = "",
         symlink = "",
         symlink_open = "",
         },
       },
        },
    add_trailing = true,
        highlight_opened_files = "icon",
        root_folder_modifier = ":~",
        special_files = { "README.md", "Makefile", "MAKEFILE" },
        group_empty = true,
        indent_markers = {
          enable = true,
        },
        highlight_git = true,
      },
  respect_buf_cwd = true,
      create_in_closed_folder = true,
}

require'nvim-web-devicons'.setup {
 -- your personnal icons can go here (to override)
 -- you can specify color or cterm_color instead of specifying both of them
 -- DevIcon will be appended to `name`
 override = {
  zsh = {
    icon = "",
    color = "#428850",
    cterm_color = "65",
    name = "Zsh"
  }
 };
 -- globally enable default icons (default to false)
 -- will get overriden by `get_icons` option
 default = true;
}

--let g:UltiSnipsExpandTrigger="<Tab>"
--let g:UltiSnipsJumpForwardTrigger="<CR>"
--let g:UltiSnipsJumpBackwardTrigger="<S-CR>"
--let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips']
--let g:UltiSnipsSnippetDirectories = ['UltiSnips']
vim.g.UltiSnipsEditSplit = 'vertical'
vim.g.UltiSnipsExpandTrigger = '<Plug>(ultisnips_expand)'      
vim.g.UltiSnipsJumpForwardTrigger = '<Plug>(ultisnips_jump_forward)'
vim.g.UltiSnipsJumpBackwardTrigger = '<Plug>(ultisnips_jump_backward)'
vim.g.UltiSnipsListSnippets = '<c-x><c-s>'
vim.g.UltiSnipsRemoveSelectModeMappings = 0

require "lsp_signature".setup({})

-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
local opts = { noremap=true, silent=true }
vim.api.nvim_set_keymap('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
vim.api.nvim_set_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
vim.api.nvim_set_keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
vim.api.nvim_set_keymap('n', '<space>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  -- vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  -- vim.api.nvim_buf_set_keymap(bufnr, 'n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  -- vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
end

-- Add additional capabilities supported by nvim-cmp
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

local lspconfig = require('lspconfig')

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
local servers = { 'gopls', 'sumneko_lua', 'rls', 'tsserver', 'vimls' }
for _, lsp in pairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    flags = {
      -- This will be the default in neovim 0.7+
      debounce_text_changes = 150,
    },
    capabilities = capabilities,
  }
end

--lspconfig['gopls'].setup {
--  settings = {
--    gopls = {
--      buildFlags = {"-tags=wireinject"}
--    }
--  }
--}

lspconfig['elixirls'].setup{
  cmd = { "/Users/oliver/lsp/elixir-ls/language_server.sh" };
}

require("cmp_nvim_ultisnips").setup{}
--local cmp_ultisnips_mappings = require("cmp_nvim_ultisnips.mappings")
local t = function(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end


-- luasnip setup
--local luasnip = require 'luasnip'

-- nvim-cmp setup
local cmp = require 'cmp'
cmp.setup {
  snippet = {
    expand = function(args)
      -- require('luasnip').lsp_expand(args.body)
      	vim.fn["UltiSnips#Anon"](args.body)
    end,
  },
  mapping = {
      	--["<Tab>"] = cmp.mapping(
      	--  function(fallback)
      --    cmp_ultisnips_mappings.compose {"select_next_item", "jump_forwards"}(fallback)
      --  end, {"i", "s"}),
      ["<Tab>"] = cmp.mapping({
          c = function()
              if cmp.visible() then
                  cmp.select_next_item({ behavior = cmp.SelectBehavior.Insert })
              else
                  cmp.complete()
              end
          end,
          i = function(fallback)
              if cmp.visible() then
                  cmp.select_next_item({ behavior = cmp.SelectBehavior.Insert })
              elseif vim.fn["UltiSnips#CanJumpForwards"]() == 1 then
                  vim.api.nvim_feedkeys(t("<Plug>(ultisnips_jump_forward)"), 'm', true)
              else
                  fallback()
              end
          end,
          s = function(fallback)
              if vim.fn["UltiSnips#CanJumpForwards"]() == 1 then
                  vim.api.nvim_feedkeys(t("<Plug>(ultisnips_jump_forward)"), 'm', true)
              else
                  fallback()
              end
          end
      }),
      ["<S-Tab>"] = cmp.mapping({
          c = function()
              if cmp.visible() then
                  cmp.select_prev_item({ behavior = cmp.SelectBehavior.Insert })
              else
                  cmp.complete()
              end
          end,
          i = function(fallback)
              if cmp.visible() then
                  cmp.select_prev_item({ behavior = cmp.SelectBehavior.Insert })
              elseif vim.fn["UltiSnips#CanJumpBackwards"]() == 1 then
                  return vim.api.nvim_feedkeys( t("<Plug>(ultisnips_jump_backward)"), 'm', true)
              else
                  fallback()
              end
          end,
          s = function(fallback)
              if vim.fn["UltiSnips#CanJumpBackwards"]() == 1 then
                  return vim.api.nvim_feedkeys( t("<Plug>(ultisnips_jump_backward)"), 'm', true)
              else
                  fallback()
              end
          end
      }),
      ['<Down>'] = cmp.mapping(cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }), {'i'}),
      ['<Up>'] = cmp.mapping(cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }), {'i'}),
      ['<C-n>'] = cmp.mapping({
          c = function()
              if cmp.visible() then
                  cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
              else
                  vim.api.nvim_feedkeys(t('<Down>'), 'n', true)
              end
          end,
          i = function(fallback)
              if cmp.visible() then
                  cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
              else
                  fallback()
              end
          end
      }),
      ['<C-p>'] = cmp.mapping({
          c = function()
              if cmp.visible() then
                  cmp.select_prev_item({ behavior = cmp.SelectBehavior.Select })
              else
                  vim.api.nvim_feedkeys(t('<Up>'), 'n', true)
              end
          end,
          i = function(fallback)
              if cmp.visible() then
                  cmp.select_prev_item({ behavior = cmp.SelectBehavior.Select })
              else
                  fallback()
              end
          end
      }),
      ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), {'i', 'c'}),
      ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), {'i', 'c'}),
      ['<C-space>'] = cmp.mapping(cmp.mapping.complete(), {'i', 'c'}),
      ['<C-e>'] = cmp.mapping({ i = cmp.mapping.close(), c = cmp.mapping.close() }),
      ['<CR>'] = cmp.mapping({
          i = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = false }),
          c = function(fallback)
              if cmp.visible() then
                  cmp.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = false })
              else
                  fallback()
              end
          end
      }),
    --['<C-k>'] = cmp.mapping.select_prev_item(),
    --['<C-j>'] = cmp.mapping.select_next_item(),
    --['<C-d>'] = cmp.mapping.scroll_docs(-4),
    --['<C-f>'] = cmp.mapping.scroll_docs(4),
    --['<C-Space>'] = cmp.mapping.complete(),
    --['<C-e>'] = cmp.mapping.close(),
    --['<CR>'] = cmp.mapping.confirm {
    --  behavior = cmp.ConfirmBehavior.Replace,
    --  select = true,
    --},
    --['<Tab>'] = function(fallback)
        --  --cmp_ultisnips_mappings.expand_or_jump_forwards(fallback)
        --  cmp_ultisnips_mappings.compose { "expand", "jump_forwards", "select_next_item" }(fallback)
    --  --if cmp.visible() then
    --  --  cmp.select_next_item()
    --  --elseif luasnip.expand_or_jumpable() then
    --  --  vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<Plug>luasnip-expand-or-jump', true, true, true), '')
    --  --else
    --  --  fallback()
    --  --end
    --end,
    --['<S-Tab>'] = function(fallback)
    --  if cmp.visible() then
    --    cmp.select_prev_item()
    --  elseif luasnip.jumpable(-1) then
    --    vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<Plug>luasnip-jump-prev', true, true, true), '')
    --  else
    --    fallback()
    --  end
    --end,
  },
  sources = {
    { name = 'nvim_lsp' },
    --{ name = 'luasnip' },
    { name = 'ultisnips' },
  },
}

-- Use buffer source for `/`.
cmp.setup.cmdline('/', {
    completion = { autocomplete = false },
    sources = {
        { name = 'buffer' }
        -- { name = 'buffer', opts = { keyword_pattern = [=[[^[:blank:]].*]=] } }
    }
})

-- Use cmdline & path source for ':'.
cmp.setup.cmdline(':', {
    completion = { autocomplete = false },
    sources = cmp.config.sources({
        { name = 'path' }
        }, {
        { name = 'cmdline' }
    })
})

require('leap').add_default_mappings()
require('telescope').load_extension('vim_bookmarks')
require('octo').setup({ })

--local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
--parser_config.solidity = {
--  install_info = {
--    url = "~/Repository/tree-sitter-solidity", -- local path or git repo
--    files = {"src/parser.c"},
--    -- optional entries:
--    branch = "main", -- default branch in case of git repo if different from master
--    generate_requires_npm = false, -- if stand-alone parser without npm dependencies
--    requires_generate_from_grammar = false, -- if folder contains pre-generated src/parser.c
--  },
--  filetype = "solidity", -- if filetype does not match the parser name
--}

-- Getting used to `d` shouldn't take long - after all, it is more comfortable
-- than `x`, and even has a better mnemonic.
-- If you still desperately want your old `x` back, then just delete these
-- mappings set by Leap:
vim.keymap.del({'x', 'o'}, 'x')
vim.keymap.del({'x', 'o'}, 'X')
-- To set alternative keys for "exclusive" selection:
--vim.keymap.set({'x', 'o'}, <some-other-key>, '<Plug>(leap-forward-till)')
--vim.keymap.set({'x', 'o'}, <some-other-key>, '<Plug>(leap-backward-till)')

vim.g.lightline = {
       colorscheme = 'nightfox',
       active = {
         left = { { 'mode', 'paste' },
                   { 'gitbranch', 'readonly', 'filename', 'modified', 'method' } }
       },
       tabline = {
         left = { {'buffers'} },
         right = { {} }
       },
       component_expand = {
         buffers = 'lightline#bufferline#buffers'
       },
       component_type = {
         buffers = 'tabsel'
       },
       component_function = {
         gitbranch = 'gitbranch#name',
         method = 'NearestmethodOrFunction'
       },
}

vim.g['lightline#bufferline#filename_modifier'] = ':t'
vim.g['lightline#bufferline#show_number'] = 2

keymap.set('n', '<Leader>b', ':call lightline#bufferline#go(input(\'buffer: \'))<CR>')
keymap.set('n', '<Leader>1', '<Plug>lightline#bufferline#go(1)')
keymap.set('n', '<Leader>2', '<Plug>lightline#bufferline#go(2)')
keymap.set('n', '<Leader>3', '<Plug>lightline#bufferline#go(3)')
keymap.set('n', '<Leader>4', '<Plug>lightline#bufferline#go(4)')
keymap.set('n', '<Leader>5', '<Plug>lightline#bufferline#go(5)')
keymap.set('n', '<Leader>6', '<Plug>lightline#bufferline#go(6)')
keymap.set('n', '<Leader>7', '<Plug>lightline#bufferline#go(7)')
keymap.set('n', '<Leader>8', '<Plug>lightline#bufferline#go(8)')
keymap.set('n', '<Leader>9', '<Plug>lightline#bufferline#go(9)')
keymap.set('n', '<Leader>0', '<Plug>lightline#bufferline#go(10)')

keymap.set('n', '<Leader>c1', '<Plug>lightline#bufferline#delete(1)')
keymap.set('n', '<Leader>c2', '<Plug>lightline#bufferline#delete(2)')
keymap.set('n', '<Leader>c3', '<Plug>lightline#bufferline#delete(3)')
keymap.set('n', '<Leader>c4', '<Plug>lightline#bufferline#delete(4)')
keymap.set('n', '<Leader>c5', '<Plug>lightline#bufferline#delete(5)')
keymap.set('n', '<Leader>c6', '<Plug>lightline#bufferline#delete(6)')
keymap.set('n', '<Leader>c7', '<Plug>lightline#bufferline#delete(7)')
keymap.set('n', '<Leader>c8', '<Plug>lightline#bufferline#delete(8)')
keymap.set('n', '<Leader>c9', '<Plug>lightline#bufferline#delete(9)')
keymap.set('n', '<Leader>c0', '<Plug>lightline#bufferline#delete(10)')

--Find files using Telescope command-line sugar.
keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<cr>')
keymap.set('n', '<leader>fg', '<cmd>Telescope live_grep<cr>')
keymap.set('n', '<leader>fb', '<cmd>Telescope buffers<cr>')
keymap.set('n', '<leader>fh', '<cmd>Telescope command_history<cr>')
keymap.set('n', '<leader>fm', '<cmd>Telescope vim_bookmarks all<cr>')

--map <c-p> :Files<CR>
keymap.set('n', '<c-p>', '<cmd>Telescope find_files<cr>')
keymap.set('n', '<c-]>', '<cmd>Telescope lsp_definitions<cr>', { silent = true })
keymap.set('n', 'gr', '<cmd>Telescope lsp_references<cr>', { silent = true })
keymap.set('n', 'gs', '<cmd>Telescope lsp_dynamic_workspace_symbols<cr>', { silent = true })
keymap.set('n', 'gt', '<cmd>Telescope lsp_dynamic_workspace_symbols symbols=struct<cr>', { silent = true })
keymap.set('n', 'gi', '<cmd>Telescope lsp_implementations<cr>', { silent = true })
keymap.set('n', 'gj', '<cmd>Telescope jumplist<cr>', { silent = true })
keymap.set('n', 'gb', ':buffers<CR>:buffer<Space>')

--let g:vista_icon_indent = ["▸ ", ""]
vim.g['vista#renderer#enable_icon'] = 1
vim.g['vista_default_executive'] = 'coc'
vim.g['vista_fzf_preview'] = {'right:50%'}
vim.g['vista#renderer#enable_icon'] = 0
vim.g['vista#renderer#icons'] = {
   variable = '\\uf71b',
   ['function'] = '\\uf794',
}


-- au BufWritePre *.go :call CocAction('format')
local func_formatting = function()
	vim.lsp.buf.formatting_sync(nil, 100)
end
vim.api.nvim_create_autocmd("FileType", {
	pattern = "*.go",
	callback = func_formatting,
})
vim.api.nvim_create_autocmd("FileType", {
	pattern = "*.js",
	callback = func_formatting,
})
vim.api.nvim_create_autocmd("FileType", {
	pattern = "*.ts",
	callback = func_formatting,
})

vim.g.tagbar_autofocus = 1
vim.g.tagbar_type_go = {
	ctagstype = 'go',
	kinds     = {
		'p:package',
		'i:imports:1',
		'c:constants',
		'v:variables',
		't:types',
		'n:interfaces',
		'w:fields',
		'e:embedded',
		'm:methods',
		'r:constructor',
		'f:functions'
	},
	sro = '.',
	kind2scope = {
		t = 'ctype',
		n = 'ntype'
	},
	scope2kind = {
		ctype = 't',
		ntype = 'n'
	},
	ctagsbin  = 'gotags',
	ctagsargs = '-sort -silent'
}

keymap.set('n', '<leader>t', ':TagbarToggle<CR>')
keymap.set('n', '<leader>d', ':bd<CR>')


keymap.set('n', '<leader>ql', ':call ToggleLocationList()<CR>')
keymap.set('n', '<leader>qo', ':copen<CR>')
keymap.set('n', '<leader>qc', ':close<CR>')
keymap.set('n', '<leader>qn', ':cnext<CR>')
keymap.set('n', '<leader>qN', ':cprevious<CR>')

keymap.set('n', '<leader>gst', ':GoTestFunc<CR>')
keymap.set('n', '<leader>gsd', ':execute \':GoDebugTest ./\' . expand("%:h") . \' -test.run=\' . go#util#TestName()<CR>')
keymap.set('n', '<leader>gb', ':GoDebugBreakpoint<CR>')
keymap.set('n', '<leader>gc', ':GoDebugContinue<CR>')
keymap.set('n', '<leader>gn', ':GoDebugNext<CR>')
keymap.set('n', '<leader>gp', ':GoDebugStep<CR>')
keymap.set('n', '<leader>gq', ':GoDebugStop<CR>')

keymap.set('n', '<leader>wm', ':MaximizerToggle<CR>')

vim.g.bookmark_save_per_working_dir = true

--Create default mappings
vim.g.NERDCreateDefaultMappings  = true
--Add spaces after comment delimiters by default
vim.g.NERDSpaceDelims  = true
--Use compact syntax for prettified multi-line comments
vim.g.NERDCompactSexyComs  = true
--Align line-wise comment delimiters flush left instead of following code indentation
vim.g.NERDDefaultAlign = 'left'
--Set a language to use its alternate delimiters by default
vim.g.NERDAltDelims_java  = true
--Add your own custom formats or override the defaults
vim.g.NERDCustomDelimiters = { c = { left = '/**', right = '*/' } }
--Allow commenting and inverting empty lines (useful when commenting a region)
vim.g.NERDCommentEmptyLines  = true
--Enable trimming of trailing whitespace when uncommenting
vim.g.NERDTrimTrailingWhitespace  = true
--Enable NERDCommenterToggle to check all selected lines is commented or not 
vim.g.NERDToggleCheckAllLines  = true

keymap.set('', '<C-_>', '<plug>NERDCommenterToggle')
