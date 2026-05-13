return {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    colors = {
      error = { "DiagnosticError", "ErrorMsg", "#DC2626" },
      warning = { "#FBBF24" },
      info = { "DiagnosticInfo", "#2563EB" },
      hint = { "#10B981" },
      default = { "Identifier", "#7C3AED" },
      test = { "Identifier", "#FF00FF" }
    },
  }
}

