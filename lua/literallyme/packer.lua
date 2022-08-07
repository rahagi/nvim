vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
  use("wbthomason/packer.nvim")

  -- Bling
  use("dylanaraps/wal.vim")
  use("vim-airline/vim-airline")
  use("vim-airline/vim-airline-themes")

  -- Accessibility
  use("jiangmiao/auto-pairs")
  use("airblade/vim-rooter")

  -- FZF
  use("junegunn/fzf", { run = ":call fzf#install()" })
  use("junegunn/fzf.vim")

  -- LSP
  use("williamboman/mason.nvim")
  use("williamboman/mason-lspconfig.nvim")
  use("neovim/nvim-lspconfig")
  use("ray-x/lsp_signature.nvim")

  -- CMP
  use("hrsh7th/nvim-cmp")
  use("hrsh7th/cmp-buffer")
  use("hrsh7th/cmp-path")
  use("hrsh7th/cmp-cmdline")
  use("hrsh7th/cmp-nvim-lsp")
  use("L3MON4D3/LuaSnip")
  use("saadparwaiz1/cmp_luasnip")
  use("onsails/lspkind-nvim")

  -- Treesitter
  use("nvim-treesitter/nvim-treesitter")
end)
