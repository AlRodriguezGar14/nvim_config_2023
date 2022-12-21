local status, packer = pcall(require, 'packer')
if (not status) then 
    print("Packer is not installed")
    return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
    use 'wbthomason/packer.nvim'
    use "ellisonleao/gruvbox.nvim"
    use "lukas-reineke/indent-blankline.nvim" -- Indentation lines
    use { 'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    } -- Status Line
    use 'L3MON4D3/LuaSnip' -- Snippet
    -- use 'neovim/nvim-lspconfig' -- LSP
--    use {'neoclide/coc.nvim', branch = 'release'} -- Like LSP but without the complicated configurations
    use {
        'neovim/nvim-lspconfig',
        'williamboman/nvim-lsp-installer',
    } -- LSP


    -- LSP Completition
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'onsails/lspkind-nvim'

    
    -- Syntax highlight
    -- nvim-treesitter and it's extras
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    }
    use 'nvim-treesitter/nvim-treesitter-refactor'
    use 'nvim-treesitter/nvim-treesitter-context'
    use {
      "folke/twilight.nvim",
      config = function()
        require("twilight").setup {
          -- your configuration comes here
            expand = { -- for treesitter, we we always try to expand to the top-most ancestor with these types
                "function_definition",
                "method_definition",
            },
        }
      end
    }
    -- Syntax highlight only for python and with its own color scheme
    -- use 'numirias/semshi'

    -- To use Golang in Vim with some extras
    use 'fatih/vim-go'


    -- Autotag and autopair
    use 'windwp/nvim-autopairs'

    


    -- NERDTree
    use 'kyazdani42/nvim-web-devicons'
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons', -- optional, for file icons
        },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }

    -- Telescope, for searching documents
    use "nvim-lua/plenary.nvim"
    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                            , branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
    }


    -- Undo history longterm and visualization
    use 'mbbill/undotree'

    -- Multiple cursors
    use 'terryma/vim-multiple-cursors'
 


    -- Vim learning game
    use 'ThePrimeagen/vim-be-good'


    -- Seamless navigation between tmux and nvim
    use 'christoomey/vim-tmux-navigator'


    -- Comment easier lines. gcc for the whole line. gc for the selection
    use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
    }






end)
