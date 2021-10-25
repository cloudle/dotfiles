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
  { "nvim-lua/plenary.nvim" },
  -- { "sheerun/vim-polyglot" },
  { "tpope/vim-fugitive" },
  { "joshdick/onedark.vim" },
  { "kyazdani42/nvim-web-devicons" },
  {
    'kyazdani42/nvim-tree.lua',
    config = function()
      require("engine.plugins.nvimtree"):setup()
    end,
  },
  {
    "windwp/nvim-autopairs",
    config = function()
      require("engine.plugins.autopairs"):setup()
    end,
  },
  {
    "romgrk/barbar.nvim",
    event = "BufWinEnter",
  },
  {
    "ms-jpq/coq_nvim",
    branch = "coq",
    -- see settings for Coq under engine.lsp
  },
  {
    "ms-jpq/coq.artifacts",
    branch = "artifacts",
  },
  {
    "folke/which-key.nvim",
    config = function()
      require("engine.keywhichs"):setup()
    end,
    event = "BufWinEnter",
  },
  {
    "max397574/better-escape.nvim",
    config = function()
      require("better_escape").setup()
    end,
  },
  {
    "numToStr/Comment.nvim",
    config = function()
      require("engine.plugins.comment"):setup()
    end,
    event = "BufRead",
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
    config = function()
      require("engine.plugins.blankline"):setup()
    end,
    event = "BufRead",
  },
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("engine.plugins.gitsigns").setup()
    end,
    event = "BufRead",
  },
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup({ "*" }, {
        RGB = true, -- #RGB hex codes
        RRGGBB = true, -- #RRGGBB hex codes
        RRGGBBAA = true, -- #RRGGBBAA hex codes
        rgb_fn = true, -- CSS rgb() and rgba() functions
        hsl_fn = true, -- CSS hsl() and hsla() functions
        css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
        css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
      })
    end,
  },  
  {
    "p00f/nvim-ts-rainbow",
    config = function()
      require'nvim-treesitter.configs'.setup {
        rainbow = {
          enable = true,
          extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
          max_file_lines = nil, -- Do not enable for files with more than n lines, int
          -- colors = {}, -- table of hex strings
          -- termcolors = {} -- table of colour name strings
        }
      }
    end,
  },
}

