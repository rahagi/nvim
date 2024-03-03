vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
  use("wbthomason/packer.nvim")
  use("nvim-lua/plenary.nvim")

  -- Bling
  use("dylanaraps/wal.vim")
  use("nvim-lualine/lualine.nvim", { requires = "kyazdani42/nvim-web-devicons", opt = true })

  -- Accessibility
  -- use("jiangmiao/auto-pairs")
  use("airblade/vim-rooter")
  use("ThePrimeagen/harpoon")
  use("kyazdani42/nvim-tree.lua", { requires = "kyazdani42/nvim-web-devicons" })
  use("tpope/vim-abolish")

  -- Fuzzy finder
  use("nvim-telescope/telescope.nvim")

  -- LSP
  use("williamboman/mason.nvim")
  use("williamboman/mason-lspconfig.nvim")
  use("neovim/nvim-lspconfig")
  use("ray-x/lsp_signature.nvim")
  use("nvimtools/none-ls.nvim")
  use("RRethy/vim-illuminate")
  use("kevinhwang91/promise-async")
  use("kevinhwang91/nvim-ufo", { requires = "kevinhwang91/promise-async" })
  use("folke/lsp-colors.nvim")
  use({
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup({})
    end,
  })
  use("arkav/lualine-lsp-progress")
  use("simrat39/rust-tools.nvim")
  -- use("github/copilot.vim")
  use("folke/neodev.nvim")
  -- use("simrat39/inlay-hints.nvim")
  use({
    "jackMort/ChatGPT.nvim",
    requires = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    },
  })

  -- CMP
  use("hrsh7th/nvim-cmp")
  use("hrsh7th/cmp-buffer")
  use("hrsh7th/cmp-path")
  use("hrsh7th/cmp-cmdline")
  use("hrsh7th/cmp-nvim-lsp")
  use("L3MON4D3/LuaSnip")
  use("saadparwaiz1/cmp_luasnip")
  use("onsails/lspkind-nvim")
  -- use("tzachar/cmp-tabnine", { run = "./install.sh", requires = "hrsh7th/nvim-cmp" })

  -- Treesitter
  use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
  use("nvim-treesitter/nvim-treesitter-context")
  use("nvim-treesitter/nvim-treesitter-textobjects")

  -- VCS
  use("lewis6991/gitsigns.nvim", { tag = "release" })
  use("TimUntersberger/neogit", { requires = "nvim-lua/plenary.nvim" })
  use("akinsho/git-conflict.nvim")
  use("sindrets/diffview.nvim")

  -- Database Management
  use("tpope/vim-dadbod")
  use("kristijanhusak/vim-dadbod-ui")
  use("kristijanhusak/vim-dadbod-completion")

  -- Snippets
  use("rafamadriz/friendly-snippets")

  -- DAP
  use("mfussenegger/nvim-dap")
  use("mxsdev/nvim-dap-vscode-js", { requires = "mfussenegger/nvim-dap" })
  use("rcarriga/nvim-dap-ui", { requires = "mfussenegger/nvim-dap" })
end)
