local fn = vim.fn
local execute = vim.api.nvim_command

local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({
        'git', 'clone', 'https://github.com/wbthomason/packer.nvim',
        install_path
    })
    execute 'packadd packer.nvim'
end

return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    -- Nvim Tree for file exploring
    use 'kyazdani42/nvim-tree.lua'
    use 'kyazdani42/nvim-web-devicons'
    -- Native LSP for neovim
    use 'neovim/nvim-lspconfig'
    use {
        "hrsh7th/nvim-cmp",
        requires = {
            'L3MON4D3/LuaSnip', -- Snippets plugin
            'hrsh7th/cmp-nvim-lsp', -- Source nvim lsp
            'ray-x/lsp_signature.nvim', -- LSP Signature
            'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
        }
    }
    use 'kabouzeid/nvim-lspinstall'
    -- Lsp Utils
    use 'RishabhRD/popfix'
    use 'RishabhRD/nvim-lsputils'
    -- Indent Line
    use "lukas-reineke/indent-blankline.nvim"
    -- Colorscheme
    use 'eddyekofo94/gruvbox-flat.nvim'
    -- Tresitter
    use 'nvim-treesitter/nvim-treesitter'
    -- Telescope
    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
    }
    -- Galaxyline
    use {'glepnir/galaxyline.nvim', branch = 'main'}
    -- Barbar buffer line
    use {'romgrk/barbar.nvim', requires = {'kyazdani42/nvim-web-devicons'}}
    -- Smooth Scroll
    use 'karb94/neoscroll.nvim'
    -- Rainbow Brackets
    use 'luochen1990/rainbow'
    -- Autopais
    use 'windwp/nvim-autopairs'
    -- Commenter
    use 'b3nj5m1n/kommentary'
    -- Git
    use 'tpope/vim-fugitive'
    use {'lewis6991/gitsigns.nvim', requires = {'nvim-lua/plenary.nvim'}}
    -- Starting Dashboard
    use 'glepnir/dashboard-nvim'
    -- Formatter
    use 'mhartington/formatter.nvim'
    use {'prettier/vim-prettier', run = 'yarn install'}
    -- Snippets
    use 'honza/vim-snippets'
    use 'vim-scripts/UltiSnips'
    use 'mlaursen/vim-react-snippets'
    -- Vim sneak
    use 'justinmk/vim-sneak'
    -- Autoclose tags
    use 'windwp/nvim-ts-autotag'
    -- Colorizer
    use 'norcalli/nvim-colorizer.lua'

end)
