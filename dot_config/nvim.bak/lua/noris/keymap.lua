local keymap = vim.keymap

keymap.set('n', '<C-n>', ':NvimTreeToggle<CR>')
keymap.set('n', '<leader>r', ':NvimTreeRefresh<CR>:TagbarForceUpdate<CR>')
keymap.set('n', '<leader>n', ':NvimTreeFindFile<CR>')

-- turn a snake into a camel
keymap.set('n', '<leader>+', ':s/\\%V_\\(.\\)/\\U\\1/g<CR>:nohlsearch<CR>')
-- turn a camel into a snake
keymap.set('n', '<leader>-', 's/\\%V\\(\\u\\)/_\\L\\1/g<CR>:nohlsearch<CR>')

keymap.set('n', '<Leader>d1', '<cmd>diffget 1<cr>')
keymap.set('n', '<Leader>d2', '<cmd>diffget 2<cr>')
keymap.set('n', '<Leader>d3', '<cmd>diffget 3<cr>')

keymap.set('n', '<leader>d', ':bd<CR>')

keymap.set('n', '<leader>qo', ':copen<CR>')
keymap.set('n', '<leader>qc', ':close<CR>')
keymap.set('n', '<leader>qN', ':cprevious<CR>')
keymap.set('n', '<C-Space>', ':cprevious<CR>zz')
keymap.set('n', '<A-h>', ':cprevious<CR>zz')
keymap.set('n', '<leader>qn', ':cnext<CR>')
keymap.set('n', '<A-Space>', ':cnext<CR>zz')
keymap.set('n', '<A-l>', ':cnext<CR>zz')
