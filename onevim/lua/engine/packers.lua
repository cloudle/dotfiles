return {
  { "wbthomason/packer.nvim" },
  { "neovim/nvim-lspconfig" },
  { "williamboman/nvim-lsp-installer" },
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "0.5-compat",
    config = function()
      require("engine.plugins.treesitter").setup()
    end,
  },
  { "wakatime/vim-wakatime" },
  -- { "sheerun/vim-polyglot" },
  { "tpope/vim-fugitive" },
  { "joshdick/onedark.vim" },
  {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function()
      require("engine.plugins.nvimtree"):setup()
    end
  },
  {
    "romgrk/barbar.nvim",
    event = "BufWinEnter",
  },
  {
    "ms-jpq/coq_nvim",
    branch = "coq",
    -- config = function()
    --   require("engine.plugins.coq"):setup()
    -- end
  },
  {
    "ms-jpq/coq.artifacts",
    branch = "artifacts",
  },
  {
    "folke/which-key.nvim",
    event = "BufWinEnter",
    config = function()
      require("engine.keywhichs"):setup()
    end
  },
  {
    "max397574/better-escape.nvim",
    config = function()
      require("better_escape").setup()
    end,
  },
  {
    "numToStr/Comment.nvim",
    event = "BufRead",
    config = function()
      require("engine.plugins.comment"):setup()
    end
  },
  {
    "Pocco81/AutoSave.nvim",
    config = function()
      require("autosave"):setup()
    end
  },
  {
    "machakann/vim-sandwich",
    event = "BufRead",
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    event = "BufRead",
    config = function()
      require("engine.plugins.blankline"):setup()
    end
  },
}

