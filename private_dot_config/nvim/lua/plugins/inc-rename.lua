return {
  { "smjonas/inc-rename.nvim", opts = {
    input_buffer_type = "snacks",
  } },
  {
    optional = true,
    "folke/noice.nvim",
    opts = {
      presets = { inc_rename = false },
    },
  },
}
