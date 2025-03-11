return {
  { "LazyVim/LazyVim", opts = { colorscheme = "catppuccin" } },

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

  "sainnhe/gruvbox-material",
  "sainnhe/everforest",
  "savq/melange-nvim",
}
