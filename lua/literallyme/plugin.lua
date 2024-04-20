return require("lazy").setup({
  "wbthomason/packer.nvim",
  "nvim-lua/plenary.nvim",

  -- Bling
  "dylanaraps/wal.vim",
  { "nvim-lualine/lualine.nvim", dependencies = "kyazdani42/nvim-web-devicons", opt = true },

  -- Accessibility
  -- "jiangmiao/auto-pairs",
  "airblade/vim-rooter",
  "ThePrimeagen/harpoon",
  { "kyazdani42/nvim-tree.lua",  dependencies = "kyazdani42/nvim-web-devicons" },
  "tpope/vim-abolish",

  -- Fuzzy finder
  "nvim-telescope/telescope.nvim",

  -- LSP
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",
  "ray-x/lsp_signature.nvim",
  "nvimtools/none-ls.nvim",
  "RRethy/vim-illuminate",
  "kevinhwang91/promise-async",
  { "kevinhwang91/nvim-ufo",           dependencies = "kevinhwang91/promise-async" },
  "folke/lsp-colors.nvim",
  "arkav/lualine-lsp-progress",
  "simrat39/rust-tools.nvim",
  -- "github/copilot.vim",
  "folke/neodev.nvim",
  -- "simrat39/inlay-hints.nvim",

  -- CMP
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-path",
  "hrsh7th/cmp-cmdline",
  "hrsh7th/cmp-nvim-lsp",
  "L3MON4D3/LuaSnip",
  "saadparwaiz1/cmp_luasnip",
  "onsails/lspkind-nvim",
  -- "tzachar/cmp-tabnine", { run = "./install.sh", dependencies = "hrsh7th/nvim-cmp" },

  -- Treesitter
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
  "nvim-treesitter/nvim-treesitter-context",
  "nvim-treesitter/nvim-treesitter-textobjects",

  -- VCS
  { "lewis6991/gitsigns.nvim", version = "release" },
  { "TimUntersberger/neogit",  dependencies = "nvim-lua/plenary.nvim" },
  "akinsho/git-conflict.nvim",
  "sindrets/diffview.nvim",

  -- Database Management
  "tpope/vim-dadbod",
  "kristijanhusak/vim-dadbod-ui",
  "kristijanhusak/vim-dadbod-completion",

  -- Snippets
  "rafamadriz/friendly-snippets",

  -- DAP
  { "mfussenegger/nvim-dap",     dependencies = "nvim-neotest/nvim-nio" },
  { "mxsdev/nvim-dap-vscode-js", dependencies = "mfussenegger/nvim-dap" },
  { "rcarriga/nvim-dap-ui",      dependencies = "mfussenegger/nvim-dap" },
})
