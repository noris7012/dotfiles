local vim = vim

-- nvim-cmp setup
local cmp = require 'cmp'
cmp.setup {
  snippet = {
    expand = function(args)
      -- require('luasnip').lsp_expand(args.body)
      	vim.fn["UltiSnips#Anon"](args.body)
    end,
  },
  mapping = {
      	--["<Tab>"] = cmp.mapping(
      	--  function(fallback)
      --    cmp_ultisnips_mappings.compose {"select_next_item", "jump_forwards"}(fallback)
      --  end, {"i", "s"}),
      ["<Tab>"] = cmp.mapping({
          c = function()
              if cmp.visible() then
                  cmp.select_next_item({ behavior = cmp.SelectBehavior.Insert })
              else
                  cmp.complete()
              end
          end,
          i = function(fallback)
              if cmp.visible() then
                  cmp.select_next_item({ behavior = cmp.SelectBehavior.Insert })
              elseif vim.fn["UltiSnips#CanJumpForwards"]() == 1 then
                  vim.api.nvim_feedkeys(t("<Plug>(ultisnips_jump_forward)"), 'm', true)
              else
                  fallback()
              end
          end,
          s = function(fallback)
              if vim.fn["UltiSnips#CanJumpForwards"]() == 1 then
                  vim.api.nvim_feedkeys(t("<Plug>(ultisnips_jump_forward)"), 'm', true)
              else
                  fallback()
              end
          end
      }),
      ["<S-Tab>"] = cmp.mapping({
          c = function()
              if cmp.visible() then
                  cmp.select_prev_item({ behavior = cmp.SelectBehavior.Insert })
              else
                  cmp.complete()
              end
          end,
          i = function(fallback)
              if cmp.visible() then
                  cmp.select_prev_item({ behavior = cmp.SelectBehavior.Insert })
              elseif vim.fn["UltiSnips#CanJumpBackwards"]() == 1 then
                  return vim.api.nvim_feedkeys( t("<Plug>(ultisnips_jump_backward)"), 'm', true)
              else
                  fallback()
              end
          end,
          s = function(fallback)
              if vim.fn["UltiSnips#CanJumpBackwards"]() == 1 then
                  return vim.api.nvim_feedkeys( t("<Plug>(ultisnips_jump_backward)"), 'm', true)
              else
                  fallback()
              end
          end
      }),
      ['<Down>'] = cmp.mapping(cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }), {'i'}),
      ['<Up>'] = cmp.mapping(cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }), {'i'}),
      ['<C-n>'] = cmp.mapping({
          c = function()
              if cmp.visible() then
                  cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
              else
                  vim.api.nvim_feedkeys(t('<Down>'), 'n', true)
              end
          end,
          i = function(fallback)
              if cmp.visible() then
                  cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
              else
                  fallback()
              end
          end
      }),
      ['<C-p>'] = cmp.mapping({
          c = function()
              if cmp.visible() then
                  cmp.select_prev_item({ behavior = cmp.SelectBehavior.Select })
              else
                  vim.api.nvim_feedkeys(t('<Up>'), 'n', true)
              end
          end,
          i = function(fallback)
              if cmp.visible() then
                  cmp.select_prev_item({ behavior = cmp.SelectBehavior.Select })
              else
                  fallback()
              end
          end
      }),
      ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), {'i', 'c'}),
      ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), {'i', 'c'}),
      ['<C-space>'] = cmp.mapping(cmp.mapping.complete(), {'i', 'c'}),
      ['<C-e>'] = cmp.mapping({ i = cmp.mapping.close(), c = cmp.mapping.close() }),
      ['<CR>'] = cmp.mapping({
          i = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = false }),
          c = function(fallback)
              if cmp.visible() then
                  cmp.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = false })
              else
                  fallback()
              end
          end
      }),
    --['<C-k>'] = cmp.mapping.select_prev_item(),
    --['<C-j>'] = cmp.mapping.select_next_item(),
    --['<C-d>'] = cmp.mapping.scroll_docs(-4),
    --['<C-f>'] = cmp.mapping.scroll_docs(4),
    --['<C-Space>'] = cmp.mapping.complete(),
    --['<C-e>'] = cmp.mapping.close(),
    --['<CR>'] = cmp.mapping.confirm {
    --  behavior = cmp.ConfirmBehavior.Replace,
    --  select = true,
    --},
    --['<Tab>'] = function(fallback)
        --  --cmp_ultisnips_mappings.expand_or_jump_forwards(fallback)
        --  cmp_ultisnips_mappings.compose { "expand", "jump_forwards", "select_next_item" }(fallback)
    --  --if cmp.visible() then
    --  --  cmp.select_next_item()
    --  --elseif luasnip.expand_or_jumpable() then
    --  --  vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<Plug>luasnip-expand-or-jump', true, true, true), '')
    --  --else
    --  --  fallback()
    --  --end
    --end,
    --['<S-Tab>'] = function(fallback)
    --  if cmp.visible() then
    --    cmp.select_prev_item()
    --  elseif luasnip.jumpable(-1) then
    --    vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<Plug>luasnip-jump-prev', true, true, true), '')
    --  else
    --    fallback()
    --  end
    --end,
  },
  sources = {
    { name = 'nvim_lsp' },
    --{ name = 'luasnip' },
    { name = 'ultisnips' },
  },
}

-- Use buffer source for `/`.
cmp.setup.cmdline('/', {
    completion = { autocomplete = false },
    sources = {
        { name = 'buffer' }
        -- { name = 'buffer', opts = { keyword_pattern = [=[[^[:blank:]].*]=] } }
    }
})

-- Use cmdline & path source for ':'.
cmp.setup.cmdline(':', {
    completion = { autocomplete = false },
    sources = cmp.config.sources({
        { name = 'path' }
        }, {
        { name = 'cmdline' }
    })
})
