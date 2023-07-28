local vim = vim
local keymap = vim.keymap

keymap.set('n', '<leader>gst', ':GoTestFunc<CR>')
keymap.set('n', '<leader>gsd', ':execute \':GoDebugTest ./\' . expand("%:h") . \' -test.run=\' . go#util#TestName()<CR>')
keymap.set('n', '<leader>gb', ':GoDebugBreakpoint<CR>')
keymap.set('n', '<leader>gc', ':GoDebugContinue<CR>')
keymap.set('n', '<leader>gn', ':GoDebugNext<CR>')
keymap.set('n', '<leader>gp', ':GoDebugStep<CR>')
keymap.set('n', '<leader>gq', ':GoDebugStop<CR>')

vim.g.go_def_mapping_enabled = false
