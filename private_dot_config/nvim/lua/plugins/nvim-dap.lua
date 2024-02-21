return {
  "mfussenegger/nvim-dap",
  config = function()
    -- Automatically load launch.js configuration files
    require("dap.ext.vscode").load_launchjs(nil, { rt_lldb = { "rust" } })
  end,
}
