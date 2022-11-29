local servers = require("literallyme.lsp.servers")
local handler = require("literallyme.lsp.handler")
local lsp_signature_cfg = require("literallyme.lsp.signature")
local lspconfig = require("lspconfig")
local cmp_nvim_lsp = require("cmp_nvim_lsp")
local lsp_signature = require("lsp_signature")
local null_ls = require("null-ls")
-- local tabnine = require("cmp_tabnine.config")
local lsp_colors = require("lsp-colors")
local rust_tools = require("rust-tools")

local capabilities = cmp_nvim_lsp.default_capabilities(handler.capabilities)

-- Check for Servers
require("mason").setup()
require("mason-lspconfig").setup()

-- Signature
lsp_signature.setup(lsp_signature_cfg)

-- null-ls
local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics
local code_actions = null_ls.builtins.code_actions

null_ls.setup({
  on_attach = handler.on_attach,
  sources = {
    code_actions.shellcheck,
    code_actions.eslint_d,
    diagnostics.shellcheck,
    diagnostics.hadolint,
    diagnostics.eslint_d,
    -- diagnostics.sqlfluff,
    formatting.blue,
    formatting.stylua,
    -- formatting.eslint_d,
    -- formatting.sqlfluff,
    formatting.prettierd,
  },
})

-- Tabnine
-- tabnine:setup({
-- 	max_lines = 1000,
-- 	max_num_results = 20,
-- 	sort = true,
-- 	run_on_every_keystroke = true,
-- 	snippet_placeholder = "..",
-- })

-- Color
lsp_colors.setup({})

-- Init LSP
local function extend_opts(extopts, opts)
  return vim.tbl_deep_extend("force", extopts, opts)
end

for _, server in pairs(servers) do
  handler.setup()

  local opts = {
    on_attach = handler.on_attach,
    capabilities = capabilities,
  }

  if server == "gopls" then
    local gopls_opts = require("literallyme.lsp.settings.gopls")
    opts = extend_opts(gopls_opts, opts)
  end

  if server == "tsserver" then
    opts.on_attach = function(client, bufnr)
      client.server_capabilities.document_formatting = false
      handler.on_attach(client, bufnr)
    end
  end

  if server == "sumneko_lua" then
    opts.on_attach = function(client)
      client.server_capabilities.document_formatting = false
      vim.cmd([[ lua require("literallyme.lsp.handler").enable_format_on_save() ]])
    end
  end

  if server == "ansiblels" then
    local ansiblels_opts = require("literallyme.lsp.settings.ansiblels")
    opts = extend_opts(ansiblels_opts, opts)
  end

  if server == "rust_analyzer" then
    rust_tools.setup({ server = opts })
  else
    lspconfig[server].setup(opts)
  end
end
