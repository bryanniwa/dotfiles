return {
  "nvim-lualine/lualine.nvim",
  opts = {
    options = {
      component_separators = "|",
      section_separators = { left = "", right = "" },
    },
    sections = {
      lualine_a = { { "mode", separator = { left = "" } } },
      lualine_z = {
        {
          function()
            return " " .. os.date("%R")
          end,
          separator = { right = "" },
        },
      },
    },
  },
}
