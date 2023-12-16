return {
  "nyoom-engineering/oxocarbon.nvim",
  priority = 1000,
  config = function()
    vim.opt.background = "dark"

    vim.cmd.colorscheme{"oxocarbon"}

    vim.api.nvim_set_hl(0, "Normal", { bg = "#202020" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#171717" })
    vim.api.nvim_set_hl(0, "DiagnosticWarn", { fg = "#fbbf24" })

    -- Telescope recolor
    local oxocarbon = require("oxocarbon")

    local colores = {
      azul = "#66ade0",
      verde = "#008000",
      rosa = "#e280b8",
      amarillo = "#FFff30",
      rojo = "#FF4A4A",
      fg = "#c3ccdc",
      bg = "none",
      inactive_bg = "#2c3043",
    }

    vim.api.nvim_set_hl(0, "TelescopeBorder", {fg = oxocarbon.blend, bg = oxocarbon.blend})
    vim.api.nvim_set_hl(0, "TelescopePromptBorder", {fg = colores.rosa, bg = oxocarbon.base02})
    vim.api.nvim_set_hl(0, "TelescopePromptNormal", {fg = oxocarbon.base05, bg = oxocarbon.base02})
    vim.api.nvim_set_hl(0, "TelescopePromptPrefix", {fg = oxocarbon.base08, bg = oxocarbon.base02})
    vim.api.nvim_set_hl(0, "TelescopeNormal", {fg = colores.azul, bg = oxocarbon.blend})
    vim.api.nvim_set_hl(0, "TelescopePreviewTitle", {fg = oxocarbon.base02, bg = oxocarbon.base12})
    vim.api.nvim_set_hl(0, "TelescopePromptTitle", {fg = oxocarbon.base02, bg = oxocarbon.base11})
    vim.api.nvim_set_hl(0, "TelescopeResultsTitle", {fg = oxocarbon.blend, bg = oxocarbon.blend})
    vim.api.nvim_set_hl(0, "TelescopeSelection", {fg = oxocarbon.none, bg = oxocarbon.base02})
    vim.api.nvim_set_hl(0, "TelescopePreviewLine", {fg = oxocarbon.none, bg = oxocarbon.base01})

    -- Lualine buffers recolor

    -- vim.api.nvim_set_hl(0, "lualine_b_buffers_active", {guifg = "#ffff00"})

    --
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

