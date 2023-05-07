local status, packer = pcall(require, 'packer')
if (not status) then
    print('Packer is not installed')
    return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'christoomey/vim-tmux-navigator'
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'
    use 'dinhhuy258/git.nvim' -- For git blame & browse
    use 'lewis6991/gitsigns.nvim'
    use 'jose-elias-alvarez/null-ls.nvim'
    use {
        'svrana/neosolarized.nvim',
        requires = { 'tjdevries/colorbuddy.nvim' }
    }
    use 'kyazdani42/nvim-web-devicons' -- File icons
    use({
        "L3MON4D3/LuaSnip",
        -- follow latest release.
        tag = "v1.*",
        -- install jsregexp (optional!:).
        run = "make install_jsregexp"
    })
    use 'MunifTanjim/prettier.nvim' -- Prettier plugin for Neovim's built-it LUA
    use 'hoob3rt/lualine.nvim'      -- Statusline
    use 'onsails/lspkind-nvim'      -- VScode-like pictograms
    use 'hrsh7th/cmp-buffer'        -- Nvim-cmp source for buffer words
    use 'hrsh7th/cmp-nvim-lsp'      -- nvim-cmp source for neovim's built-in LSP
    use 'hrsh7th/nvim-cmp'          -- Completion
    use 'neovim/nvim-lspconfig'     -- LSP
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    use 'windwp/nvim-autopairs'
    use 'windwp/nvim-ts-autotag'

    use 'nvim-lua/plenary.nvim' -- Common utilites
    use 'nvim-telescope/telescope.nvim'
    use 'nvim-telescope/telescope-file-browser.nvim'
    use 'akinsho/nvim-bufferline.lua'
    use 'norcalli/nvim-colorizer.lua'
    use 'glepnir/lspsaga.nvim'
end)
