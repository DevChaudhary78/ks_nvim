return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    vim.keymap.set("n", "<C-n>", function()
      vim.cmd.Neotree("toggle")
    end)
    vim.fn.sign_define("DiagnosticSignError",
      { text = " ", texthl = "DiagnosticSignError" })
    vim.fn.sign_define("DiagnosticSignWarn",
      { text = " ", texthl = "DiagnosticSignWarn" })
    vim.fn.sign_define("DiagnosticSignInfo",
      { text = " ", texthl = "DiagnosticSignInfo" })
    vim.fn.sign_define("DiagnosticSignHint",
      { text = "󰌵", texthl = "DiagnosticSignHint" })
    vim.keymap.set("n", "<leader>bf", "<Cmd>Neotree buffers reveal float<Cr>", { noremap = true })
    vim.keymap.set("n", "<leader>q", "<Cmd>bd<Cr>")

    require("neo-tree").setup({
      close_if_last_window = true,
      popup_border_style = "rounded",
      filesystem = {
        hijack_netrw_behaviour = "open_default",
        filtered_items = {
          visible = true,
        }
      },

      window = {
        mappings = {
          ["<Cr>"] = "open",
        }
      }
    })
  end
}
