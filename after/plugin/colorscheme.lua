--vim.cmd[[colorscheme tokyonight]]
--vim.cmd [[colorscheme dracula]]
vim.cmd[[colorscheme poimandres]]
vim.cmd [[hi NvimTreeNormal guibg=NONE ctermbg=NONE]]

vim.cmd [[hi TelescopeBorder guifg=NONE]]
vim.cmd [[hi TelescopeResultsBorder guifg=NONE]]
vim.cmd [[hi TelescopePreviewBorder guifg=NONE]]
vim.cmd [[hi TelescopePromptBorder guifg=NONE]]
vim.cmd [[hi TelescopeTitle guifg=NONE]]
vim.cmd [[hi LineNr guifg=#91b4d5]]

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
vim.api.nvim_set_hl(0, "BufferTabpageFill", { bg = "none" })
vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })

vim.opt.listchars = { multispace = '·' }
vim.opt.list = true
