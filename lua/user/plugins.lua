-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
-- vim.cmd [[packadd packer.nvim]]

-- autocmd to reload the file and sync the packages when
-- the plugins file is saved
vim.cmd [[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

return packer.startup(function(use)
    -- theming
    use 'wbthomason/packer.nvim'
    use 'marko-cerovac/material.nvim'
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use "windwp/nvim-autopairs" -- Autopairs, integrates with both cmp and treesitter
    use { "kyazdani42/nvim-tree.lua" }
    use { "michaelb/sniprun", run = "bash ./install.sh" }
    use {

        "iamcco/markdown-preview.nvim",
        run = "cd app && npm install",
        ft = "markdown",
    }
    -- cmp plugins
    -- use "hrsh7th/nvim-cmp" -- The completion plugin
    use {
        "hrsh7th/nvim-cmp",
        -- commit = "dbc72290295cfc63075dab9ea635260d2b72f2e5",
    }
    use "hrsh7th/cmp-buffer" -- buffer completions
    use "hrsh7th/cmp-path" -- path completions
    use "hrsh7th/cmp-cmdline" -- cmdline completions
    use "saadparwaiz1/cmp_luasnip" -- snippet completions
    use "hrsh7th/cmp-nvim-lsp"
    use "hrsh7th/cmp-emoji"
    use "hrsh7th/cmp-nvim-lua"
    use "rcarriga/cmp-dap"

    -- DAP
    use "mfussenegger/nvim-dap"

    -- snippets
    use "L3MON4D3/LuaSnip" --snippet engine
    use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

    -- utilities
    use 'mbbill/undotree'
    use 'nvim-lua/plenary.nvim'
    use 'b3nj5m1n/kommentary'

    -- lsp
    use "neovim/nvim-lspconfig" -- enable LSP
    use "williamboman/nvim-lsp-installer" -- simple to use language server installer
    use "tamago324/nlsp-settings.nvim" -- language server settings defined in json for
    use "jose-elias-alvarez/null-ls.nvim" -- for formatters and linters
    use "ray-x/lsp_signature.nvim"

    use({
        "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
        config = function()
            require("lsp_lines").setup()
        end,
    })

    -- Telescope
    use "nvim-telescope/telescope.nvim"
    use "tom-anders/telescope-vim-bookmarks.nvim"
    use "nvim-telescope/telescope-media-files.nvim"
    use "nvim-telescope/telescope-ui-select.nvim"
    use "nvim-telescope/telescope-file-browser.nvim"

    use {
        "folke/trouble.nvim",
        cmd = "TroubleToggle",
    }

    -- Treesitter
    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
    }
    use "theHamsta/nvim-treesitter-pairs"

    -- misc
    -- rust tools
    use "simrat39/rust-tools.nvim"

    -- draw diagrams in neovim
    use "jbyuki/venn.nvim"
end)
