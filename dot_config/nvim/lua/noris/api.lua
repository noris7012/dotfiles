local api = vim.api

api.nvim_command('set clipboard+=unnamedplus')
--vim.api.nvim_command('set foldmethod=syntax')
api.nvim_command('set jumpoptions+=stack')
-- the same: a-z,_,A-Z,0-9
-- vim.api.nvim_command('set iskeyword=65-90,95,97-122,48-57')

api.nvim_command('syntax on')

api.nvim_command('command -nargs=* Glg Git log --graph --oneline --decorate <args>')
api.nvim_command('command -nargs=* Gla Git log --graph --oneline --decorate --all <args>')

api.nvim_command('filetype plugin on')
api.nvim_command('set grepprg=rg\\ --vimgrep\\ --no-heading\\ --smart-case')
api.nvim_command('set grepformat=%f:%l:%c:%m')

api.nvim_command('highlight DiffAdd guibg=DarkGreen')
api.nvim_command('highlight DiffDelete guibg=LightGray')
api.nvim_command('highlight DiffChange guibg=Purple')
api.nvim_command('highlight DiffText guibg=DarkRed')
