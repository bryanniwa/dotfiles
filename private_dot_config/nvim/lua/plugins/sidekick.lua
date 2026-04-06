return {
  "folke/sidekick.nvim",
  keys = {
    {
      "<c-.>",
      function() require("sidekick.cli").focus({ name = "opencode", focus = true }) end,
      desc = "Sidekick Toggle Opencode",
      mode = { "n", "t", "i", "x" },
    },
  }
}
