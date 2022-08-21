local nvim_tree = require("nvim-tree")

nvim_tree.setup({
  view = {
    mappings = {
      list = {
        { key = "c", action = "create" },
        { key = "y", action = "copy" },
        { key = "d", action = "cut" },
        { key = "D", action = "remove" },
        { key = "O", action = "close_node" },
      },
    }
  }
})

