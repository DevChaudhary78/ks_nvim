return {
  -- Decorating Commandline
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
    -- config = function()
    --   require('dressing').setup({
    --     select = {
    --       get_config = function(opts)
    --         if opts.kind == 'codeaction' then
    --           return {
    --             backend = 'nui',
    --             nui = {
    --               relative = 'cursor',
    --               max_width = 40,
    --             }
    --           }
    --         end
    --       end
    --     }
    --   })
    -- end
  },
  -- Extends the feature for tabs and tab controls (extends the features with telescope)
  {
    "akinsho/bufferline.nvim",
    event = "VeryLazy",
    config = function()
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
