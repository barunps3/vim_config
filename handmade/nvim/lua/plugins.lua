-- Add packer package which was already git cloned
-- git clone --depth 1 https://github.com/wbthomason/packer.nvim\
-- ~/.local/share/nvim/site/pack/packer/start/packer.nvim
--vim.cmd("packadd packer.nvim")

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Post-install/update hook with neovim command
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- Fuzzy Finder
  use {'nvim-telescope/telescope.nvim', tag = '0.1.6',
    requires = {
      {'nvim-lua/plenary.nvim'},
      {'BurntSushi/ripgrep'}
    }
  }

  --  use {'tpope/vim-fugitive'}
  use 'lewis6991/gitsigns.nvim'

  use {'hrsh7th/nvim-cmp',
    requires = {
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'hrsh7th/cmp-nvim-lsp'},
    }
  }

  use {'github/copilot.vim'}
end)
