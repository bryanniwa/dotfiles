-- return {
--   "mfussenegger/nvim-dap",
--   dependencies = {
--     "mason-org/mason.nvim",
--     opts = function(_, opts)
--       opts.ensure_installed = opts.ensure_installed or {}
--       table.insert(opts.ensure_installed, "cortex-debug")
--     end,
--   },
--   opts = function()
--     require("dap-cortex-debug").setup()
--   end,
-- }
return {
  "jedrzejboczar/nvim-dap-cortex-debug",
  opts = {},
}
