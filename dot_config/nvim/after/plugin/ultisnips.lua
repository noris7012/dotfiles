local vim = vim

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

require("cmp_nvim_ultisnips").setup{}
--local cmp_ultisnips_mappings = require("cmp_nvim_ultisnips.mappings")
local t = function(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end
