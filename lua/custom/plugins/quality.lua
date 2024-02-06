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
  }
}
