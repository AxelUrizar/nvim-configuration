return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    "nvim-treesitter/nvim-treesitter-textobjects",
  },
  build = ':TSUpdate',
  config = function ()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      ensure_installed = { "go", "c", "lua", "vim", "vimdoc", "query", "javascript", "html", "json", "tsx" },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
      textobjects = {
        select = {
          enable = true,
          lookahead = true,
          keymaps = {
            ["af"] = "@function.outer",
            ["if"] = "@function.inner",
            ["ac"] = "@class.outer",
            ["ic"] = "@class.inner",
            ["as"] = "@statement.outer",
            ["is"] = "@statement.inner",
            ["ap"] = "@parameter.outer",
            ["ip"] = "@parameter.inner",
            ["ar"] = "@return.outer",
            ["ir"] = "@return.inner",
          },
          include_surrounding_whitespace = true
        },
      },
    })
  end
}
