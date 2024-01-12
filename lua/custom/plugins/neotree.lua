return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    vim.keymap.set("n", "<C-n>", ":Neotree toggle<Cr>", { noremap = true })
    vim.keymap.set("n", "<leader>bf", ":Neotree buffers reveal float<Cr>", { noremap = true })

    require("neo-tree").setup({
      filesystem = {
        hijack_netrw_behaviour = "open_default",
      }
    })
  end
}
