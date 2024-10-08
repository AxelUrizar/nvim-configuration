return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local lualine = require("lualine")
    local lazy_status = require("lazy.status") -- to configure lazy pending updates count

    local colors = {
      blue = "#40aaff",
      cyan = "#80ede0",
      green = "#a0f0a0",
      violet = "#e2b0f8",
      yellow = "#FFff70",
      red = "#FF7A7A",
      grey = "#808080",
      semilightgray = "#a9a9a9",
      fg = "#ffffff",
      bg = "none",
      custom_bg = "#3b3b3b",
      inactive_bg = "#202020",
    }

    local my_lualine_theme = {
      normal = {
        a = { bg = colors.cyan, fg = colors.custom_bg, gui = "bold" },
        b = { bg = colors.custom_bg, fg = colors.fg },
        c = { bg = colors.bg, fg = colors.fg },
      },
      insert = {
        a = { bg = colors.green, fg = colors.custom_bg, gui = "bold" },
        b = { bg = colors.custom_bg, fg = colors.fg },
        c = { bg = colors.bg, fg = colors.fg },
      },
      visual = {
        a = { bg = colors.yellow, fg = colors.custom_bg, gui = "bold" },
        b = { bg = colors.custom_bg, fg = colors.fg },
        c = { bg = colors.bg, fg = colors.fg },
      },
      command = {
        a = { bg = colors.violet, fg = colors.custom_bg, gui = "bold" },
        b = { bg = colors.custom_bg, fg = colors.fg },
        c = { bg = colors.bg, fg = colors.fg },
      },
      replace = {
        a = { bg = colors.green, fg = colors.custom_bg, gui = "bold" },
        b = { bg = colors.custom_bg, fg = colors.fg },
        c = { bg = colors.bg, fg = colors.fg },
      },
      inactive = {
        a = { bg = colors.inactive_bg, fg = colors.semilightgray, gui = "bold" },
        b = { bg = colors.inactive_bg, fg = colors.semilightgray },
        c = { bg = colors.inactive_bg, fg = colors.semilightgray },
      },
    }

    -- configure lualine with modified theme
    lualine.setup({
      options = {
        -- Usar colores propios
        theme = my_lualine_theme,
        -- theme = 'modus-vivendi',
      },
      sections = {
        lualine_b = { 'buffers' },
        lualine_c = { '' },
        lualine_x = {
          {
            lazy_status.updates,
            cond = lazy_status.has_updates,
            color = { fg = "#ff9e64" },
          },
          { "branch" },
          { "fileformat" },
          { "filetype" },
        },
      },
    })
  end,
}

