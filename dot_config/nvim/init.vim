call plug#begin('~/.config/nvim/plugged')

Plug 'test/oliver-test'

" Plug 'scrooloose/nerdtree'
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'
Plug 'junegunn/fzf.vim'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neovim/nvim-lspconfig'
Plug 'christoomey/vim-tmux-navigator'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'majutsushi/tagbar'
Plug 'milkypostman/vim-togglelist'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'

Plug 'maxmellon/vim-jsx-pretty'
" Plug 'joshdick/onedark.vim'
" Plug 'ayu-theme/ayu-vim'
" Plug 'morhetz/gruvbox'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'EdenEast/nightfox.nvim'

Plug 'mengelbrecht/lightline-bufferline'
Plug 'liuchengxu/vista.vim'
Plug 'udalov/kotlin-vim'
Plug 'tpope/vim-surround'
Plug 'vimwiki/vimwiki'
"Plug 'easymotion/vim-easymotion'
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

" Plug 'L3MON4D3/LuaSnip'
" Plug 'saadparwaiz1/cmp_luasnip'

Plug 'ray-x/lsp_signature.nvim'

" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'tomlion/vim-solidity'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'elixir-editors/vim-elixir'

call plug#end()

set rtp+=/opt/homebrew/opt/fzf

set clipboard=unnamed " use OS clipboard

" if hidden is not set, TextEdit might fail.
set hidden


"" [Start coc.nvim]
"" Some servers have issues with backup files, see #649
"set nobackup
"set nowritebackup
"
"" Better display for messages
"set cmdheight=2
"
"" You will have bad experience for diagnostic messages when it's default 4000.
"set updatetime=300
"
"" don't give |ins-completion-menu| messages.
"set shortmess+=c
"
"" always show signcolumns
"set signcolumn=yes
"
"" Use tab for trigger completion with characters ahead and navigate.
"" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
"inoremap <silent><expr> <TAB>
"      \ pumvisible() ? "\<C-n>" :
"      \ <SID>check_back_space() ? "\<TAB>" :
"      \ coc#refresh()
"inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
"
"function! s:check_back_space() abort
"  let col = col('.') - 1
"  return !col || getline('.')[col - 1]  =~# '\s'
"endfunction
"
"" Use <c-space> to trigger completion.
"inoremap <silent><expr> <c-space> coc#refresh()
"
"" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
"" Coc only does snippet and additional edit on confirm.
"inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
"" Or use `complete_info` if your vim support it, like:
"" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
"
"" Use `[g` and `]g` to navigate diagnostics
"nmap <silent> [g <Plug>(coc-diagnostic-prev)
"nmap <silent> ]g <Plug>(coc-diagnostic-next)
"
"" Remap keys for gotos
"nmap <silent> <c-]> <Plug>(coc-definition)
"nmap <silent> gd <Plug>(coc-definition)
"nmap <silent> gy <Plug>(coc-type-definition)
"nmap <silent> gi <Plug>(coc-implementation)
"nmap <silent> gr <Plug>(coc-references)
"
"" Use K to show documentation in preview window
"nnoremap <silent> K :call <SID>show_documentation()<CR>
"
"function! s:show_documentation()
"  if (index(['vim','help'], &filetype) >= 0)
"    execute 'h '.expand('<cword>')
"  else
"    call CocAction('doHover')
"  endif
"endfunction
"
"" Highlight symbol under cursor on CursorHold
"autocmd CursorHold * silent call CocActionAsync('highlight')
"
"" Remap for rename current word
"nmap <leader>rn <Plug>(coc-rename)
"
"" Remap for format selected region
"xmap <leader>f  <Plug>(coc-format-selected)
"nmap <leader>f  <Plug>(coc-format-selected)
"
"augroup mygroup
"  autocmd!
"  " Setup formatexpr specified filetype(s).
"  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
"  " Update signature help on jump placeholder
"  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
"augroup end
"
"" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
"xmap <leader>a  <Plug>(coc-codeaction-selected)
"nmap <leader>a  <Plug>(coc-codeaction-selected)
"
"" Remap for do codeAction of current line
"nmap <leader>ac  <Plug>(coc-codeaction)
"" Fix autofix problem of current line
"nmap <leader>qf  <Plug>(coc-fix-current)
"
"" Create mappings for function text object, requires document symbols feature of languageserver.
"xmap if <Plug>(coc-funcobj-i)
"xmap af <Plug>(coc-funcobj-a)
"omap if <Plug>(coc-funcobj-i)
"omap af <Plug>(coc-funcobj-a)
"
"" Use <TAB> for select selections ranges, needs server support, like: coc-tsserver, coc-python
"" nmap <silent> <TAB> <Plug>(coc-range-select)
"" xmap <silent> <TAB> <Plug>(coc-range-select)
"
"" Use `:Format` to format current buffer
"command! -nargs=0 Format :call CocAction('format')
"
"" Use `:Fold` to fold current buffer
"command! -nargs=? Fold :call     CocAction('fold', <f-args>)
"
"" use `:OR` for organize import of current buffer
"command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')
"
"" Add status line support, for integration with other plugin, checkout `:h coc-status`
"set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
"
"" Using CocList
"" Show all diagnostics
"nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
"" Manage extensions
"nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
"" Show commands
"nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
"" Find symbol of current document
"nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
"" Search workspace symbols
"nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
"" Do default action for next item.
"nnoremap <silent> <space>j  :<C-u>CocNext<CR>
"" Do default action for previous item.
"nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
"" Resume latest coc list
"nnoremap <silent> <space>p  :<C-u>CocListResume<CR>
"" [End coc.nvim]

" [Start nvim-tree]
" vimrc
"let g:nvim_tree_indent_markers = 1 "0 by default, this option shows indent markers when folders are open
"let g:nvim_tree_git_hl = 1 "0 by default, will enable file highlight for git attributes (can be used without the icons).
"let g:nvim_tree_highlight_opened_files = 1 "0 by default, will enable folder and file icon highlight for opened files/directories.
"let g:nvim_tree_root_folder_modifier = ':~' "This is the default. See :help filename-modifiers for more options
"let g:nvim_tree_add_trailing = 1 "0 by default, append a trailing slash to folder names
"let g:nvim_tree_group_empty = 1 " 0 by default, compact folders that only contain a single folder into one node in the file tree
"let g:nvim_tree_icon_padding = ' ' "one space by default, used for rendering the space between the icon and the filename. Use with caution, it could break rendering if you set an empty string depending on your font.
"let g:nvim_tree_symlink_arrow = ' >> ' " defaults to ' ➛ '. used as a separator between symlinks' source and target.
"let g:nvim_tree_respect_buf_cwd = 1 "0 by default, will change cwd of nvim-tree to that of new buffer's when opening nvim-tree.
"let g:nvim_tree_create_in_closed_folder = 1 "0 by default, When creating files, sets the path of a file when cursor is on a closed folder to the parent folder when 0, and inside the folder when 1.
"let g:nvim_tree_special_files = { 'README.md': 1, 'Makefile': 1, 'MAKEFILE': 1 } " List of filenames that gets highlighted with NvimTreeSpecialFile
"let g:nvim_tree_show_icons = {
"    \ 'git': 1,
"    \ 'folders': 1,
"    \ 'files': 1,
"    \ 'folder_arrows': 1,
"    \ }
"If 0, do not show the icons for one of 'git' 'folder' and 'files'
"1 by default, notice that if 'files' is 1, it will only display
"if nvim-web-devicons is installed and on your runtimepath.
"if folder is 1, you can also tell folder_arrows 1 to show small arrows next to the folder icons.
"but this will not work when you set indent_markers (because of UI conflict)

" default will show icon by default if no icon is provided
" default shows no icon by default
"let g:nvim_tree_icons = {
"    \ 'default': '',
"    \ 'symlink': '',
"    \ 'git': {
"    \   'unstaged': "✗",
"    \   'staged': "✓",
"    \   'unmerged': "",
"    \   'renamed': "➜",
"    \   'untracked': "★",
"    \   'deleted': "",
"    \   'ignored': "◌"
"    \   },
"    \ 'folder': {
"    \   'arrow_open': "",
"    \   'arrow_closed': "",
"    \   'default': "",
"    \   'open': "",
"    \   'empty': "",
"    \   'empty_open': "",
"    \   'symlink': "",
"    \   'symlink_open': "",
"    \   }
"    \ }

nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>:TagbarForceUpdate<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>
" More available functions:
" NvimTreeOpen
" NvimTreeClose
" NvimTreeFocus
" NvimTreeFindFileToggle
" NvimTreeResize
" NvimTreeCollapse
" NvimTreeCollapseKeepBuffers

" a list of groups can be found at `:help nvim_tree_highlight`
highlight NvimTreeFolderIcon guibg=blue

" let g:UltiSnipsExpandTrigger="<Tab>"
" let g:UltiSnipsJumpForwardTrigger="<CR>"
" let g:UltiSnipsJumpBackwardTrigger="<S-CR>"
let g:UltiSnipsEditSplit="vertical"
" let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips']
" let g:UltiSnipsSnippetDirectories = ['UltiSnips']
let g:UltiSnipsExpandTrigger = '<Plug>(ultisnips_expand)'      
let g:UltiSnipsJumpForwardTrigger = '<Plug>(ultisnips_jump_forward)'
let g:UltiSnipsJumpBackwardTrigger = '<Plug>(ultisnips_jump_backward)'
let g:UltiSnipsListSnippets = '<c-x><c-s>'
let g:UltiSnipsRemoveSelectModeMappings = 0

lua << EOF
  -- following options are the default
  -- each of these are documented in `:help nvim-tree.OPTION_NAME`
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
  
  require "lsp_signature".setup({})
EOF
" [End nvim-tree]

" [Start lsp.config]
lua << EOF
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

--  local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
--  parser_config.solidity = {
--    install_info = {
--      url = "~/Repository/tree-sitter-solidity", -- local path or git repo
--      files = {"src/parser.c"},
--      -- optional entries:
--      branch = "main", -- default branch in case of git repo if different from master
--      generate_requires_npm = false, -- if stand-alone parser without npm dependencies
--      requires_generate_from_grammar = false, -- if folder contains pre-generated src/parser.c
--    },
--    filetype = "solidity", -- if filetype does not match the parser name
--  }

  -- Getting used to `d` shouldn't take long - after all, it is more comfortable
  -- than `x`, and even has a better mnemonic.
  -- If you still desperately want your old `x` back, then just delete these
  -- mappings set by Leap:
  vim.keymap.del({'x', 'o'}, 'x')
  vim.keymap.del({'x', 'o'}, 'X')
  -- To set alternative keys for "exclusive" selection:
  --vim.keymap.set({'x', 'o'}, <some-other-key>, '<Plug>(leap-forward-till)')
  --vim.keymap.set({'x', 'o'}, <some-other-key>, '<Plug>(leap-backward-till)')
EOF

" [End lsp.config]

set number
" set relativenumber
set noshowmode

let g:lightline = {
      \ 'colorscheme': 'nightfox',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified', 'method' ] ]
      \ },
      \ 'tabline': {
      \   'left': [ ['buffers'] ],
      \   'right': [ [] ]
      \ },
      \ 'component_expand': {
      \   'buffers': 'lightline#bufferline#buffers'
      \ },
      \ 'component_type': {
      \   'buffers': 'tabsel'
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead',
      \   'method': 'NearestmethodOrFunction'
      \ },
      \ }

let g:lightline#bufferline#filename_modifier = ':t'
let g:lightline#bufferline#show_number = 2

nmap <Leader>b :call lightline#bufferline#go(input('buffer: '))<CR>
nmap <Leader>1 <Plug>lightline#bufferline#go(1)
nmap <Leader>2 <Plug>lightline#bufferline#go(2)
nmap <Leader>3 <Plug>lightline#bufferline#go(3)
nmap <Leader>4 <Plug>lightline#bufferline#go(4)
nmap <Leader>5 <Plug>lightline#bufferline#go(5)
nmap <Leader>6 <Plug>lightline#bufferline#go(6)
nmap <Leader>7 <Plug>lightline#bufferline#go(7)
nmap <Leader>8 <Plug>lightline#bufferline#go(8)
nmap <Leader>9 <Plug>lightline#bufferline#go(9)
nmap <Leader>0 <Plug>lightline#bufferline#go(10)

nmap <Leader>c1 <Plug>lightline#bufferline#delete(1)
nmap <Leader>c2 <Plug>lightline#bufferline#delete(2)
nmap <Leader>c3 <Plug>lightline#bufferline#delete(3)
nmap <Leader>c4 <Plug>lightline#bufferline#delete(4)
nmap <Leader>c5 <Plug>lightline#bufferline#delete(5)
nmap <Leader>c6 <Plug>lightline#bufferline#delete(6)
nmap <Leader>c7 <Plug>lightline#bufferline#delete(7)
nmap <Leader>c8 <Plug>lightline#bufferline#delete(8)
nmap <Leader>c9 <Plug>lightline#bufferline#delete(9)
nmap <Leader>c0 <Plug>lightline#bufferline#delete(10)

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope command_history<cr>
nnoremap <leader>fm <cmd>Telescope vim_bookmarks all<cr>

" map <c-p> :Files<CR>
nmap <c-p> <cmd>Telescope find_files<cr>
nmap <silent> <c-]> <cmd>Telescope lsp_definitions<cr>
nmap <silent> gr <cmd>Telescope lsp_references<cr>
nmap <silent> gs <cmd>Telescope lsp_dynamic_workspace_symbols<cr>
nmap <silent> gt <cmd>Telescope lsp_dynamic_workspace_symbols symbols=struct<cr>
nmap <silent> gi <cmd>Telescope lsp_implementations<cr>
nmap <silent> gj <cmd>Telescope jumplist<cr>

set noswapfile

""" Customize colors
" func! s:my_colors_setup() abort
"     hi Pmenu ctermbg=#808080
" endfunc
" 
" augroup colorscheme_coc_setup | au!
"     au ColorScheme * call s:my_colors_setup()
" augroup END

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

syntax on
set termguicolors
" let ayucolor="dark"
" colorscheme ayu
" autocmd vimenter * colorscheme gruvbox
" colorscheme gruvbox
" colorscheme tokyonight-moon
colorscheme nightfox

set noswapfile

set showtabline=2

"let g:vista_icon_indent = ["▸ ", ""]
let g:vista#renderer#enable_icon = 1
let g:vista_default_executive = 'coc'

let g:vista_fzf_preview = ['right:50%']

let g:vista#renderer#enable_icon = 0
let g:vista#renderer#icons = {
\   "function": "\uf794",
\   "variable": "\uf71b",
\  }

"nmap <leader>gs :G<CR><C-w>10- nmap <leader>gr :diffget //3<CR>
"nmap <leader>gl :diffget //2<CR> nmap <leader>q :qa<CR>

set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
"set expandtab

command -nargs=* Glg Git! log --graph --pretty=format:'\%h - (\%ad)\%d \%s <\%an>' --abbrev-commit --date=local <args>

nnoremap gb :buffers<CR>:buffer<Space>

set nocompatible
filetype plugin on

" au BufWritePre *.go :call CocAction('format')
autocmd BufWritePre *.go lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.js lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.ts lua vim.lsp.buf.formatting_sync(nil, 100)

set grepprg=rg\ --vimgrep\ --no-heading\ --smart-case
set grepformat=%f:%l:%c:%m

nmap <leader>t :TagbarToggle<CR>
nmap <leader>d :bd<CR>

let g:tagbar_autofocus = 1
let g:tagbar_type_go = {
	\ 'ctagstype' : 'go',
	\ 'kinds'     : [
		\ 'p:package',
		\ 'i:imports:1',
		\ 'c:constants',
		\ 'v:variables',
		\ 't:types',
		\ 'n:interfaces',
		\ 'w:fields',
		\ 'e:embedded',
		\ 'm:methods',
		\ 'r:constructor',
		\ 'f:functions'
	\ ],
	\ 'sro' : '.',
	\ 'kind2scope' : {
		\ 't' : 'ctype',
		\ 'n' : 'ntype'
	\ },
	\ 'scope2kind' : {
		\ 'ctype' : 't',
		\ 'ntype' : 'n'
	\ },
	\ 'ctagsbin'  : 'gotags',
	\ 'ctagsargs' : '-sort -silent'
\ }

nnoremap <leader>ql :call ToggleLocationList()<CR>
nnoremap <leader>qo :copen<CR>
nnoremap <leader>qc :close<CR>
nnoremap <leader>qn :cnext<CR>
nnoremap <leader>qN :cprevious<CR>

nnoremap <leader>gst :GoTestFunc<CR>
nnoremap <leader>gsd :execute ':GoDebugTest ./' . expand("%:h") . ' -test.run=' . go#util#TestName()<CR>
nnoremap <leader>gb :GoDebugBreakpoint<CR>
nnoremap <leader>gc :GoDebugContinue<CR>
nnoremap <leader>gn :GoDebugNext<CR>
nnoremap <leader>gp :GoDebugStep<CR>
nnoremap <leader>gq :GoDebugStop<CR>

nnoremap <leader>wm :MaximizerToggle<CR>

let g:bookmark_save_per_working_dir = 1

" Create default mappings
let g:NERDCreateDefaultMappings = 1
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1

map <C-_> <plug>NERDCommenterToggle

" call go#lsp#Restart().
