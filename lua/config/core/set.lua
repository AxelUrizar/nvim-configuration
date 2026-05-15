vim.opt.nu = true
vim.opt.relativenumber = true

-- Indentation
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.autoindent = true

vim.opt.cmdheight = 0

vim.opt.wrap = true

vim.opt.swapfile = true

vim.opt.backup = true
vim.opt.backupdir = os.getenv("HOME") .. "/.vim/backup"

-- Just on linux
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

-- Foldear bloques de código
vim.opt.foldmethod = "indent"
vim.opt.foldlevel = 99

-- Session options
vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

------------------ COLORSCHEME ---------------------

local colorscheme = {
  light_cyan = "#8df2f2",
  light_blue = "#7785AC",
  light_green = "#A5E6BA",
  light_yellow = "#f2f28d",
  light_red = "#f28d8d",
  light_purple = "#ccbbff",
}

local colorscheme_alt = {
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

-- LSP Colors
vim.api.nvim_set_hl(0, "Statement", { fg = colorscheme.light_purple })
-- vim.api.nvim_set_hl(0, "@variable", { fg = colorscheme.light_green })
-- vim.api.nvim_set_hl(0, "Special", { fg = "#ffffff" })
-- vim.api.nvim_set_hl(0, "String", { fg = colorscheme.light_cyan })
vim.api.nvim_set_hl(0, "Type", { fg = colorscheme.light_red })
--

-- Highlight para los diagnostics

-- Texto inline con fondo claro
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextError", { fg = "#ff7a7a", bg = "#3d1f1f", italic = true })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextWarn",  { fg = "#ffc777", bg = "#3d2e0f", italic = true })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextHint",  { fg = "#6fc1e9", bg = "#142a3d", italic = true })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextInfo",  { fg = "#4fd6be", bg = "#1a3530", italic = true })

-- Símbolo en el gutter
vim.api.nvim_set_hl(0, "DiagnosticSignError", { fg = "#ff7a7a", bold = true })
vim.api.nvim_set_hl(0, "DiagnosticSignWarn",  { fg = "#ffc777", bold = true })
vim.api.nvim_set_hl(0, "DiagnosticSignHint",  { fg = "#6fc1e9", bold = true })
vim.api.nvim_set_hl(0, "DiagnosticSignInfo",  { fg = "#4fd6be", bold = true })
