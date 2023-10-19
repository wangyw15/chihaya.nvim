-- lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup("plugins")

-- indent and tab
vim.opt.smartindent = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.mouse = 'a'
vim.opt.number = true

-- key mapping
local map = vim.api.nvim_set_keymap
local map_options = {
  noremap = true,
  silent = true,
}
map('n', '<C-h>', ':bprev<CR>', map_options)
map('n', '<C-l>', ':bnext<CR>', map_options)

