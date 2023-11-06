return {
  "nyoom-engineering/oxocarbon.nvim",
  priority = 1000,
  config = function()
    vim.opt.background = "dark"

    vim.cmd.colorscheme{"oxocarbon"}

    vim.api.nvim_set_hl(0, "Normal", { bg = "#202020" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#171717" })
    vim.api.nvim_set_hl(0, "DiagnosticWarn", { fg = "#fbbf24" })

    vim.opt.listchars = { multispace = '·' }
    vim.opt.list = true
  end
}

-- return {
--   "olivercederborg/poimandres.nvim",
--   priority = 1000, -- make sure it loads first
--   config = function()
--     -- load the colorscheme
--
--     vim.cmd([[colorscheme poimandres]])
--
--     vim.cmd [[hi NvimTreeNormal guibg=NONE ctermbg=NONE]]
--
--     vim.cmd [[hi TelescopeBorder guifg=NONE]]
--     vim.cmd [[hi TelescopeResultsBorder guifg=NONE]]
--     vim.cmd [[hi TelescopePreviewBorder guifg=NONE]]
--     vim.cmd [[hi TelescopePromptBorder guifg=NONE]]
--     vim.cmd [[hi TelescopeTitle guifg=NONE]]
--     vim.cmd [[hi LineNr guifg=#91b4d5]]
--
--     vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
--     vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
--     vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
--     vim.api.nvim_set_hl(0, "BufferTabpageFill", { bg = "none" })
--     vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
--     vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
--
--     vim.opt.listchars = { multispace = '·' }
--     vim.opt.list = true
--   end,
-- }

-- return {
--   "folke/tokyonight.nvim",
--   config = function()
--     vim.cmd [[colorscheme tokyonight]]
--   end
-- } 

-- return {
--   "rockerBOO/boo-colorscheme-nvim",
--   priority = 1000,
--   config = function ()
--     require('boo-colorscheme').use({italic = true})
--
--     vim.opt.termguicolors = true
--     vim.cmd [[ colorscheme boo ]]
--   end
-- }

