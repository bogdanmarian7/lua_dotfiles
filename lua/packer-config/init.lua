
---------------------------Handle Packer -------------------------------------
local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

-- Checks if installation directory is empty.
-- If it is it downloads packer.
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.fn.execute(
    '!git clone https://github.com/wbthomason/packer.nvim ' .. install_path
  )
end

-- We call call PackerCompile every time the buffer has been written to.
vim.cmd [[
augroup Packer
  autocmd!
  autocmd BufWritePost init.lua PackerCompile
augroup end
]]

------Help Packer-----:
-- You must run this or `PackerSync` whenever you make changes to your plugin configuration
-- Regenerate compiled loader file:
--:PackerCompile
-- Remove any disabled or unused plugins:
--:PackerClean
-- Clean, then install missing plugins:
--:PackerInstall
-- Clean, then update and install plugins:
--:PackerUpdate
-- Perform `PackerUpdate` and then `PackerCompile`
--:PackerSync
-- Loads opt plugin immediately
--:PackerLoad completion-nvim ale
-----------------------------------------------------------------------------
return require("packer").startup(function()
    -- Package manager
    use 'wbthomason/packer.nvim'

    -- Catppuccin colorscheme
    --use {'catppuccin/nvim', as = 'catppuccin'}

    -- Tokyonight colorscheme
    use 'folke/tokyonight.nvim'

    -- Telescope fuzzy finder
    -- Install also ripgrep and fd with scoop:
    -- scoop install fd
    -- scoop install ripgrep
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or, branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    -- Icons for files
    use 'kyazdani42/nvim-web-devicons'
    -- Nvim treesitter for syntax highlighting
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function() require('nvim-treesitter.install').prefer_git = true end,
        ----run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    }
    ----------------------------------------------------

    --Completions (cmp plugins):
    use 'hrsh7th/nvim-cmp' -- The completion plugin
	use 'hrsh7th/cmp-buffer' -- buffer completions
	use 'hrsh7th/cmp-path'-- path completions
	use 'hrsh7th/cmp-cmdline' -- cmdline completions
	use 'saadparwaiz1/cmp_luasnip' -- snippet completions
    use 'hrsh7th/cmp-nvim-lsp'

    -- snippets
	use 'L3MON4D3/LuaSnip' --snippet engine
	use 'rafamadriz/friendly-snippets' -- a bunch of snippets to use
    
    -- Lsp
    use 'neovim/nvim-lspconfig' -- enable LSP
	use 'williamboman/nvim-lsp-installer' -- simple to use language server installer
	--use 'jose-elias-alvarez/null-ls.nvim' -- for formatters and linters

    -- Neovim terminal
    use 'akinsho/toggleterm.nvim'

    ----------------------------------------------------
    -- Add it at the end
    -- Automatically set up your configuration after cloning packer.nvim
    --if packer_bootstrap then
    --require('packer').sync()
    --end
end)
