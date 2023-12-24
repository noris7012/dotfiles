return {
  colorscheme = "dayfox",
  mappings = {
    -- first key is the mode
    n = {
			["<A-h>"] = { "<cmd>cprevious<cr>zz", desc = "previous quickfinx" },
			["<A-l>"] = { "<cmd>cnext<cr>zz", desc = "next quickfinx" },
      ["<C-n>"] = { "<cmd>Neotree toggle<cr>", desc = "Toggle Explorer" },
      ["<leader>fg"] = { function() require("telescope.builtin").live_grep() end, desc = "Find words" },
      ["\\"] = false,
      ["<C-]>"] = { function() vim.lsp.buf.definition() end, desc = "Show the definition of current symbol" },
      ["<C-_>"] = { function() require("Comment.api").toggle.linewise.count(vim.v.count > 0 and vim.v.count or 1) end, desc = "Toggle comment line" },
      ["<C-p>"] = { function() require("telescope.builtin").find_files() end, desc = "Find files" },
    },
    v = {
      ["<C-_>"] = { "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>", desc = "Toggle comment for selection" }
    },
    i = {
      ["<C-t>"] = { "copilot#Accept(\"<cr>\")", expr = true, silent = true,  replace_keycodes = false },
    },
  },
  options = {
    opt = {
      relativenumber = true, -- sets vim.opt.relativenumber
    },
    g = {
      mapleader = "\\", -- sets vim.g.mapleader
      editorconfig = false,
    },
  },
  lsp = {
    config = {
      tsserver = {
        on_attach = function(client, bufnr)
          vim.cmd('setlocal shiftwidth=2')
        end
      },
      clangd = {
        cmd = {
          "clangd",
          "--offset-encoding=utf-16",
        }
      }
    }
  },
  polish = function()
    -- local func_formatting = function()
    -- 	vim.lsp.buf.formatting_sync(nil, 100)
    -- end
    -- vim.api.nvim_create_autocmd("FileType", {
    -- 	pattern = "*.go",
    -- 	callback = func_formatting,
    -- })
    -- vim.api.nvim_create_autocmd("FileType", {
    -- 	pattern = "*.js",
    -- 	callback = func_formatting,
    -- })
    -- vim.api.nvim_create_autocmd("FileType", {
    -- 	pattern = "*.ts",
    -- 	callback = func_formatting,
    -- })
  end,
}
