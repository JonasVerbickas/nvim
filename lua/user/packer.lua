-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Colours
  use 'wbthomason/packer.nvim'
  use 'folke/tokyonight.nvim'
  use 'Mofiqul/vscode.nvim'
  use 'tanvirtin/monokai.nvim'
  use 'https://gitlab.com/__tpb/monokai-pro.nvim'
  use 'p00f/nvim-ts-rainbow'
  -- treesitter
  use("nvim-treesitter/nvim-treesitter", {
        run = ":TSUpdate"
    })

  -- telescope
  use("nvim-lua/plenary.nvim")
  use("nvim-telescope/telescope.nvim")

  -- LSP
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    'hrsh7th/nvim-cmp', -- Autocompletion plugin
    'hrsh7th/cmp-nvim-lsp', -- LSP source for nvim-cmp
    'saadparwaiz1/cmp_luasnip', -- Snippets source for nvim-cmp
    'L3MON4D3/LuaSnip', -- Snippets plugin
    "neovim/nvim-lspconfig",
    }

  use {
      'kyazdani42/nvim-tree.lua',
      requires = {
        'kyazdani42/nvim-web-devicons', -- optional, for file icons
      },
  }

end)
