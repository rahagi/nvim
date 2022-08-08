local servers           = require("literallyme.lsp.servers")
local handler           = require("literallyme.lsp.handler")
local lsp_signature_cfg = require("literallyme.lsp.signature")
local lspconfig         = require("lspconfig")
local cmp_nvim_lsp      = require("cmp_nvim_lsp")
local lsp_signature     = require("lsp_signature")
local null_ls           = require("null-ls")

local capabilities = cmp_nvim_lsp.update_capabilities(handler.capabilities)

-- Check for Servers
require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = servers
})

-- Signature
lsp_signature.setup(lsp_signature_cfg)

-- null-ls
local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics
local code_actions = null_ls.builtins.code_actions

null_ls.setup({
  sources = {
    diagnostics.shellcheck,
  }
})


-- Init LSP
local function extend_opts(extopts, opts)
  return vim.tbl_deep_extend("force", extopts, opts)
end

for _, server in pairs(servers) do
  local opts = {
    on_attach = handler.on_attach,
    capabilities = capabilities,
  }

  if server == "gopls" then
    local gopls_opts = require("literallyme.lsp.settings.gopls")
    opts = extend_opts(gopls_opts, opts)
  end

  lspconfig[server].setup(opts)
end
