
require('settings')

-- Packer config for installing plugins and colorschemes
require('packer-config')

-- Mappings of neovim
require('mappings')

-- Catppuccin coloscheme config
--require('colorschemes-config.catppuccin')
require('colorschemes-config.tokyonight')

-- nvim-treesitter config
require('plugins-config.treesitter')

-- cmp code completions
require('plugins-config.cmp')

-- LSP config
require('lsp')

--Toggle Term config
require('plugins-config.toggleterm')
