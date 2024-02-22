return {
  -- Oil to manage filesystem like a chad
  {
    'stevearc/oil.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('oil').setup({
        view_options = {
          show_hidden = true,
        }
      })
      vim.keymap.set("n", "<C-n>", "<Cmd>Oil<Cr>", { desc = "Open Parent Directory" })
    end
  },
  -- Persistence to persist session
  {
    "folke/persistence.nvim",
    event = "BufReadPre", -- this will only start session saving when an actual file was opened
    opts = {
      -- add any custom options here
    }
  }
}
