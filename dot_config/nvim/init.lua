require("noris")

local vim = vim
local keymap = vim.keymap

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
