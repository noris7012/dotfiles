require('leap').add_default_mappings()

local vim = vim

-- Getting used to `d` shouldn't take long - after all, it is more comfortable
-- than `x`, and even has a better mnemonic.
-- If you still desperately want your old `x` back, then just delete these
-- mappings set by Leap:
vim.keymap.del({'x', 'o'}, 'x')
vim.keymap.del({'x', 'o'}, 'X')
-- To set alternative keys for "exclusive" selection:
--vim.keymap.set({'x', 'o'}, <some-other-key>, '<Plug>(leap-forward-till)')
--vim.keymap.set({'x', 'o'}, <some-other-key>, '<Plug>(leap-backward-till)')
