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
  -- Leap to perform that fast movement using s<char><char><Cr>
  {
    "ggandor/leap.nvim",
    config = function()
      require("leap").add_default_mappings()
    end
  },
  -- autopairs main keys like {, ', etc
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
  -- Extends the feature for tabs and tab controls (extends the features with telescope)
  {
    "akinsho/bufferline.nvim",
    event = "VeryLazy",
    config = function()
      vim.keymap.set("n", "<S-h>", "<Cmd>BufferLineCyclePrev<Cr>",
        { noremap = true, silent = true, desc = "Previous Tab" })
      vim.keymap.set("n", "<S-l>", "<Cmd>BufferLineCycleNext<Cr>", { noremap = true, silent = true, desc = "Next Tab" })
      require("bufferline").setup {
        options = {
          mode = "buffers",
          buffer_close_icon = '󰅖',
          modified_icon = '●',
          close_icon = '',
          left_trunc_marker = '',
          right_trunc_marker = '',
        }
      }
    end
  }
}
