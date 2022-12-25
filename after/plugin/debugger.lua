local dap = require("dap")
local dapui = require("dapui")
local typescript = require("literallyme.dap.configs.typescript")

dapui.setup()

require("dap-vscode-js").setup({
  debugger_path = "/home/rhg/.local/share/nvim/mason/packages/js-debug-adapter",
  adapters = { "pwa-node", "pwa-chrome" },
})

dap.configurations.typescript = { typescript }
