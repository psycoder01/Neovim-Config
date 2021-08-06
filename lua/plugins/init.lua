local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end


return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  
  -- Nvim Tree for file exploring
  use 'kyazdani42/nvim-web-devicons'
  use'kyazdani42/nvim-tree.lua'

  -- Native LSP for neovim
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-compe'
  use 'kabouzeid/nvim-lspinstall'

  --Indent Line
  use "lukas-reineke/indent-blankline.nvim"

  --Colorscheme
  use 'glepnir/zephyr-nvim'

  --Tresitter
  use 'nvim-treesitter/nvim-treesitter'

  --Telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }

  --Galaxyline
  use {
    'glepnir/galaxyline.nvim',
    branch = 'main',
    -- your statusline
    config = function() require'my_statusline' end,
    -- some optional icons
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }

end)
