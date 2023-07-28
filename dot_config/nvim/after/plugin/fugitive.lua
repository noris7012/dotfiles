local vim = vim
local keymap = vim.keymap


vim.cmd [[
  command GCheckoutQuickfix execute 'G checkout' . ' ' . matchstr(getline('.'), '^[a-f0-9]\+') . ' -- ' . fnameescape(bufname('#'))
]]
keymap.set('n', 'gc', '<cmd>GCheckoutQuickfix<cr>', { silent = true })
