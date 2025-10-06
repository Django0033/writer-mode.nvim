-- Define a command to toggle writer mode
vim.api.nvim_create_user_command(
  'WriterMode',
  function()
    require('util').toggle()
  end,
  {
    desc = 'Toggle writer mode',
    nargs = 0,
  }
)
