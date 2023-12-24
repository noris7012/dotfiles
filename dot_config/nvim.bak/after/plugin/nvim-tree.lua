require'nvim-tree'.setup {
  disable_netrw        = false,
  hijack_netrw         = true,
  -- open_on_setup        = false,
  -- ignore_buffer_on_setup = false,
  -- ignore_ft_on_setup   = {},
  --auto_close           = false,
  auto_reload_on_write = true,
  open_on_tab          = false,
  hijack_cursor        = false,
  update_cwd           = false,
  hijack_unnamed_buffer_when_opening = false,
  hijack_directories   = {
    enable = true,
    auto_open = true,
  },
  diagnostics = {
    enable = false,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  },
  update_focused_file = {
    enable      = false,
    update_cwd  = false,
    ignore_list = {}
  },
  system_open = {
    cmd  = nil,
    args = {}
  },
  filters = {
    dotfiles = false,
    custom = {}
  },
  git = {
    enable = true,
    ignore = false,
    timeout = 500,
  },
  view = {
    width = 30,
    --height = 30,
    hide_root_folder = false,
    side = 'left',
    preserve_window_proportions = false,
    mappings = {
      custom_only = false,
      list = {}
    },
    number = false,
    relativenumber = false,
    signcolumn = "yes"
  },
  trash = {
    cmd = "trash",
    require_confirm = true
  },
  actions = {
    change_dir = {
      enable = true,
      global = false,
    },
    open_file = {
      quit_on_open = false,
      resize_window = false,
      window_picker = {
        enable = true,
        chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
        exclude = {
          filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame", },
          buftype  = { "nofile", "terminal", "help", },
        }
      }
    }
  },
  log = {
    enable = false,
    truncate = false,
    types = {
      all = false,
      config = false,
      git = false,
    },
  },
  renderer = {
        icons = {
      	show = {
      	  file = true,
      	  git = true,
      	  folder = true,
      	  folder_arrow = true,
      	},
          padding = ' ',
      	symlink_arrow = ' >> ',
      	glyphs = {
       default = "",
       symlink = "",
       git = {
         unstaged = "✗",
         staged = "✓",
         unmerged = "",
         renamed = "➜",
         untracked = "★",
         deleted = "",
         ignored = "◌"
         },
       folder = {
         arrow_open = "",
         arrow_closed = "",
         default = "",
         open = "",
         empty = "",
         empty_open = "",
         symlink = "",
         symlink_open = "",
         },
       },
        },
    add_trailing = true,
        highlight_opened_files = "icon",
        root_folder_modifier = ":~",
        special_files = { "README.md", "Makefile", "MAKEFILE" },
        group_empty = true,
        indent_markers = {
          enable = true,
        },
        highlight_git = true,
      },
  respect_buf_cwd = true,
      -- create_in_closed_folder = true,
}
