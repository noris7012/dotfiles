local vim = vim 
local keymap = vim.keymap

keymap.set('n', '<leader>t', ':TagbarToggle<CR>')
keymap.set('n', '<leader>wm', ':MaximizerToggle<CR>')
keymap.set('n', '<leader>ql', ':call ToggleLocationList()<CR>')

vim.g.bookmark_save_per_working_dir = true

vim.api.nvim_command('imap <silent><script><expr> <C-T> copilot#Accept("\\<CR>")')
vim.g.copilot_no_tab_map = true
-- vim.g.copilot_filetypes = { VimspectorPrompt = false }

