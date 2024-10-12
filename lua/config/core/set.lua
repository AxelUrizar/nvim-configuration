vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.wrap = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

-- vim.opt.colorcolumn = "80"

vim.opt.listchars = { multispace = '·' }
vim.opt.list = true


------------------ COLORSCHEME ---------------------

local colorscheme = {
  light_cyan = "#8df2f2",
  light_blue = "#8dc1f2",
  light_green = "#8df28d",
  light_yellow = "#f2f28d",
  light_red = "#f28d8d",
  light_purple = "#ccbbff",
}

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })

vim.api.nvim_set_hl(0, "Statement", { fg = colorscheme.light_purple })
vim.api.nvim_set_hl(0, "htmlTagName", { fg = colorscheme.light_purple })
