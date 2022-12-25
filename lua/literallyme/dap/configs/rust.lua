local extension_path = "/home/rhg/.local/share/nvim/mason/packages/codelldb/extension/"
local codelldb_path = extension_path .. "adapter/codelldb"
local liblldb_path = extension_path .. "lldb/lib/liblldb.so"

local rust = {
  adapter = require("rust-tools.dap").get_codelldb_adapter(codelldb_path, liblldb_path),
}

return rust
