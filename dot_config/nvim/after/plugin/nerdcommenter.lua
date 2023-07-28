local vim = vim
local keymap = vim.keymap

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

