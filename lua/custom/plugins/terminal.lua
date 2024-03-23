local config = {
  'akinsho/toggleterm.nvim',
  event = "VeryLazy",
  opts = {
    direction = "float",
    open_mapping = [[<C-_>]],
    insert_mappings = true,
  }
}

if jit.os == 'OSX' then
  config.opts.open_mapping = [[<C-/>]]
end

return config
