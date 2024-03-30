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
  -- Session management using auto-session
  -- {
  --   'rmagatti/auto-session',
  --   config = function()
  --     require('auto-session').setup {
  --       auto_session_enable_last_session = true,
  --       log_level = 'info',
  --       auto_session_root_dir = vim.fn.stdpath('data') .. "/sessions/",
  --       auto_session_enabled = true,
  --       auto_session_last_session_dir = vim.fn.stdpath('data') .. '/sessions/',
  --       session_lens = {
  --         buftypes_to_ignore = {},
  --         load_on_setup = true,
  --         theme_conf = { border = true },
  --         previewer = false,
  --       },
  --     }
  --
  --     vim.keymap.set("n", "<C-s>", require("auto-session.session-lens").search_session, {
  --       noremap = true,
  --       desc = "Open the list of active sessions"
  --     })
  --   end
  -- },
  -- Harpoon to quickly toggle files
  {
    'ThePrimeagen/harpoon',
    config = function()
      vim.api.nvim_set_keymap('n', '<leader>ha', [[:lua require('harpoon.mark').add_file()<CR>]], {
        noremap = true,
        desc = "[H]arpoon [A]dd file for quick toggle menu"
      })

      vim.api.nvim_set_keymap('n', '<leader>hm', [[:lua require('harpoon.ui').toggle_quick_menu()<CR>]], {
        noremap = true,
        desc = "Open [H]arpoon [M]enu"
      })

      for i = 1, 5 do
        vim.api.nvim_set_keymap('n', '<leader>' .. i, [[:lua require("harpoon.ui").nav_file(]] .. i .. [[)<CR>]], {
          noremap = true,
          desc = "Toggle through files using workspace keymaps"
        })
      end
    end
  },
  {
    "nvim-pack/nvim-spectre",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
      vim.keymap.set('n', '<leader>st', '<cmd>lua require("spectre").toggle()<CR>', {
        desc = "Toggle Spectre"
      })
      vim.keymap.set('n', '<leader>sn', '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', {
        desc = "Search current word"
      })
      vim.keymap.set('n', '<leader>sp', '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', {
        desc = "Search on current file"
      })
    end
  }
}
