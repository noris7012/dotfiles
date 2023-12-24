local keymap = vim.keymap

--Find files using Telescope command-line sugar.
keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<cr>')
keymap.set('n', '<leader>fg', '<cmd>Telescope live_grep<cr>')
keymap.set('n', '<leader>fb', '<cmd>Telescope buffers<cr>')
keymap.set('n', '<leader>fh', '<cmd>Telescope command_history<cr>')
keymap.set('n', '<leader>fm', '<cmd>Telescope vim_bookmarks all<cr>')


--map <c-p> :Files<CR>
keymap.set('n', '<c-p>', '<cmd>Telescope find_files<cr>')
keymap.set('n', '<c-]>', vim.lsp.buf.definition)
keymap.set('n', '<c-]>', '<c-]>zz')
keymap.set('n', '<c-o>', '<c-o>zz')
keymap.set('n', '<c-i>', '<c-i>zz')
keymap.set('n', 'gr', '<cmd>Telescope lsp_references include_current_line=true<cr>', { silent = true })
keymap.set('n', 'gs', '<cmd>Telescope lsp_dynamic_workspace_symbols<cr>', { silent = true })
keymap.set('n', 'gt', '<cmd>Telescope lsp_dynamic_workspace_symbols symbols=struct<cr>', { silent = true })
keymap.set('n', 'gi', '<cmd>Telescope lsp_implementations<cr>', { silent = true })
keymap.set('n', 'gj', '<cmd>Telescope jumplist<cr>', { silent = true })
keymap.set('n', 'gb', ':buffers<CR>:buffer<Space>')

-- require('telescope').load_extension('vim_bookmarks')
