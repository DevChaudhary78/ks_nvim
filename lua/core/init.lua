-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Setting indentation and tabs
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.smartindent = true

vim.o.scrolloff = 999

-- to improve loading time
vim.loader.enable()

require("core.lazy")
require("core.quality")
require("core.keymaps")
require("core.telescope")
require("core.lsp")
require("core.completion")
