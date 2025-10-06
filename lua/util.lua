local M = {}

M.enable = function()
    vim.opt_local.textwidth = 80
    vim.opt_local.wrap = true
    vim.opt_local.linebreak = true
    vim.opt_local.spell = true
    vim.opt_local.spelllang = 'en_us'
    vim.opt_local.formatoptions:append('t')
end

M.disable = function()
    vim.opt_local.textwidth = 0
    vim.opt_local.wrap = false
    vim.opt_local.linebreak = false
    vim.opt_local.spell = false
    vim.opt_local.formatoptions:remove('t')
end

M.toggle = function()
  if vim.opt_local.spell:get() then
    M.disable()
    print('Writer mode disabled.')
  else
    M.enable()
    print('Writer mode enabled.')
  end
end

return M
