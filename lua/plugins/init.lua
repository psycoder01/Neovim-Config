local fn = vim.fn
local execute = vim.api.nvim_command

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
  use 'eddyekofo94/gruvbox-flat.nvim'

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
    -- some optional icons
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }

  --Barbar buffer line
  use {
    'romgrk/barbar.nvim',
    requires = {'kyazdani42/nvim-web-devicons'}
  }

  --Smooth Scroll
  use 'karb94/neoscroll.nvim'

  --Autopais
  use 'windwp/nvim-autopairs'
  --Rainbow Brackets
  use 'p00f/nvim-ts-rainbow'
  --Commenter
  use 'b3nj5m1n/kommentary'

  --Git signs
  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    }
  }

  --Tmux navigator
  use 'numToStr/Navigator.nvim'

  --Dynamic size splits
  use 'beauwilliams/focus.nvim'

  --Starting Dashboard
  use 'glepnir/dashboard-nvim'

  --Formatter
  use {'prettier/vim-prettier', run = 'yarn install'}
  use 'mhartington/formatter.nvim'

end)
