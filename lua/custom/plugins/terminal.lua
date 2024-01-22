local config = {
  'akinsho/toggleterm.nvim',
  version = "*",
  opts = {
    direction = 'float',
    terminal_mappings = true,
    start_in_insert = true,
  },
}

if jit.os == 'OSX' then
  config.opts.shell = vim.o.shell
  config.opts.open_mapping = [[<C-/>]]
elseif jit.os == 'Windows' then
  config.opts.shell = "powershell"
  config.opts.open_mapping = [[<C-_>]]
end

return config
