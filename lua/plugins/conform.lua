return {
  "stevearc/conform.nvim",
  opts = {
    format_on_save = true, -- lo manejamos nosotros
    formatters_by_ft = {
      javascript = { "prettier" },
      typescript = { "prettier" },
      javascriptreact = { "prettier" },
      typescriptreact = { "prettier" },
      json = { "prettier" },
      html = { "prettier" },
      css = { "prettier" },
      markdown = { "prettier" },
    },
  },
}
