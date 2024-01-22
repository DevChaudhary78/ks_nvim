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
    -- config = function()
    --   require('dressing').setup({
    --     select = {
    --       get_config = function(opts)
    --         if opts.kind == 'codeaction' then
    --           return {
    --             backend = 'nui',
    --             nui = {
    --               position = "50%",
    --               size = nil,
    --               relative = "editor",
    --               border = {
    --                 style = "rounded",
    --               },
    --               buf_options = {
    --                 swapfile = false,
    --                 filetype = "DressingSelect",
    --               },
    --               win_options = {
    --                 winblend = 0,
    --               },
    --               max_width = 80,
    --               max_height = 40,
    --               min_width = 40,
    --               min_height = 10,
    --             },
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
    keys = {
      { "<leader>bp", "<Cmd>BufferLineTogglePin<CR>",            desc = "Toggle pin" },
      { "<leader>bP", "<Cmd>BufferLineGroupClose ungrouped<CR>", desc = "Delete non-pinned buffers" },
      { "<leader>bo", "<Cmd>BufferLineCloseOthers<CR>",          desc = "Delete other buffers" },
      { "<leader>br", "<Cmd>BufferLineCloseRight<CR>",           desc = "Delete buffers to the right" },
      { "<leader>bl", "<Cmd>BufferLineCloseLeft<CR>",            desc = "Delete buffers to the left" },
      { "<S-h>",      "<cmd>BufferLineCyclePrev<cr>",            desc = "Prev buffer" },
      { "<S-l>",      "<cmd>BufferLineCycleNext<cr>",            desc = "Next buffer" },
    },
  }
}
