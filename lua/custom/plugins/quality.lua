return {
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = true,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    }
  },
  {
    "windwp/nvim-autopairs",
    dependencies = { 'hrsh7th/nvim-cmp' },
    config = function()
      require("nvim-autopairs").setup {}
      local cmp_autopairs = require('nvim-autopairs.completion.cmp')
      local cmp = require('cmp')
      cmp.event:on(
        'confirm_done',
        cmp_autopairs.on_confirm_done()
      )
    end,
  },
  -- Decorating FileStructure
  {
    'stevearc/dressing.nvim',
    opts = {},
  },
  {
    "arnamak/stay-centered.nvim",
    config = function()
      require("stay-centered").setup()
    end
  },
  -- Mini.surround the make surround process much more painless
  {
    'echasnovski/mini.surround',
    config = function()
      require("mini.surround").setup({
        mappings = {
          add = 'sa',            -- Add surrounding in Normal and Visual modes
          delete = 'sd',         -- Delete surrounding
          find = 'sf',           -- Find surrounding (to the right)
          find_left = 'sF',      -- Find surrounding (to the left)
          highlight = 'sh',      -- Highlight surrounding
          replace = 'sr',        -- Replace surrounding
          update_n_lines = 'sn', -- Update `n_lines`

          suffix_last = 'l',     -- Suffix to search with "prev" method
          suffix_next = 'n',     -- Suffix to search wwth "next" method
        },
      })
    end
  },
  {
    "TobinPalmer/Tip.nvim",
    event = "VimEnter",
    init = function()
      -- Default config
      --- @type Tip.config
      require("tip").setup({
        seconds = 2,
        title = "Tip!",
        url = "https://vtip.43z.one", -- Or https://vimiscool.tech/neotip
      })
    end,
  },
  {
    'NvChad/nvim-colorizer.lua',
    config = function()
      require('colorizer').setup()
    end
  }
}
