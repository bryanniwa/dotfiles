return {
  { "LazyVim/LazyVim", opts = { colorscheme = "rose-pine" } },

  {
    "folke/tokyonight.nvim",
    opts = {
      dim_inactive = { enabled = true },
    },
  },

  { "AlexvZyl/nordic.nvim" },
  {
    "ellisonleao/gruvbox.nvim",
    opts = {
      undercurl = true,
      dim_inactive = true,
      contrast = "medium",
    },
  },

  {
    -- Customizations sources from https://github.com/minusfive/dotfiles
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      dim_inactive = {
        enabled = true,
      },

      integrations = {
        dap = {
          enabled = true,
          enable_ui = true,
        },
      },
    },
  },

  {
    "rose-pine/neovim",
    name = "rose-pine",
    opts = {
      dim_inactive_windows = true,
    },
  },

  "sainnhe/gruvbox-material",
  "sainnhe/everforest",
  "savq/melange-nvim",
}
