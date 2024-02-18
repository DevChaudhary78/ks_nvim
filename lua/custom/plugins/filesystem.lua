return {
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
  }
}
