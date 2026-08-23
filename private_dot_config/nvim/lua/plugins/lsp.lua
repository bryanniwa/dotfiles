return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      lua_ls = {
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" },
            },
          },
        },
      },
      pyright = {
        settings = {
          pyright = {
            disableOrganizeImports = true,
          },
          python = {
            analysis = {
              typeCheckingMode = "off",
              ignore = { "*" },
            },
          },
        },
      },
      -- We want this enabled by default but copy this section to the .lazy.lua file of any legacy project
      -- for which you want to disable type checking.
      -- basedpyright = {
      --   settings = {
      --     basedpyright = {
      --       analysis = {
      --         ignore = { "*" }, -- this can be used to suppress error messages to prioritize ruff while still keeping other features like type hints
      --         typeCheckingMode = "off",
      --       },
      --     },
      --   },
      -- },
    },
  },
}
