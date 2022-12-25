local typescript = {
  type = "pwa-node",
  request = "attach",
  cwd = vim.fn.getcwd(),
  sourceMaps = true,
  protocol = "inspector",
  port = 9229,
  webRoot = "${workspaceFolder}",
}

return typescript
