return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    -- { "antosha417/nvim-lsp-file-operations", config = true },
  },
  config = function()
    local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }

    vim.diagnostic.config({
      virtual_text = {
        spacing = 2,
        severity_sort = true,
        -- Símbolo distinto según severidad en el texto inline
        prefix = function(diagnostic)
          local severity = diagnostic.severity
          if severity == vim.diagnostic.severity.ERROR then return signs.Error
          elseif severity == vim.diagnostic.severity.WARN  then return signs.Warn
          elseif severity == vim.diagnostic.severity.HINT  then return signs.Hint
          elseif severity == vim.diagnostic.severity.INFO  then return signs.Info
          end
        end,
        -- Highlight group con fondo según severidad
        format = function(diagnostic)
          return diagnostic.message
        end,
        hl_mode = "combine",
      },
      signs = {
        text = {
          [vim.diagnostic.severity.ERROR] = signs.Error,
          [vim.diagnostic.severity.WARN]  = signs.Warn,
          [vim.diagnostic.severity.HINT]  = signs.Hint,
          [vim.diagnostic.severity.INFO]  = signs.Info,
        },
        numhl = {
          [vim.diagnostic.severity.ERROR] = "DiagnosticSignError",
          [vim.diagnostic.severity.WARN]  = "DiagnosticSignWarn",
          [vim.diagnostic.severity.HINT]  = "DiagnosticSignHint",
          [vim.diagnostic.severity.INFO]  = "DiagnosticSignInfo",
        },
      },
      severity_sort = true,
    })
    -- NOTE: Setup de los servidores
    local cmp_nvim_lsp = require("cmp_nvim_lsp")
    local keymap = vim.keymap

    local opts = { noremap = true, silent = true }
    local on_attach = function(_, bufnr)
      opts.buffer = bufnr

      -- set keybinds
      opts.desc = "Show LSP references"
      keymap.set("n", "gR", "<cmd>Telescope lsp_references<CR>", opts) -- show definition, references

      opts.desc = "Go to declaration"
      keymap.set("n", "gD", vim.lsp.buf.declaration, opts) -- go to declaration

      opts.desc = "Show LSP definitions"
      keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts) -- show lsp definitions

      opts.desc = "Show LSP implementations"
      keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts) -- show lsp implementations

      opts.desc = "Show LSP type definitions"
      keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts) -- show lsp type definitions

      opts.desc = "See available code actions"
      keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts) -- see available code actions, in visual mode will apply to selection

      opts.desc = "Smart rename"
      keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts) -- smart rename

      opts.desc = "Show clipboard content"
      keymap.set("n", "<leader>cp", "<cmd>Telescope registers theme=ivy<CR>", opts) -- show clipboard content

      opts.desc = "Show buffer diagnostics"
      keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0 theme=ivy<CR>", opts) -- show  diagnostics for file

      opts.desc = "Show line diagnostics"
      keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts) -- show diagnostics for line

      opts.desc = "Go to previous diagnostic"
      keymap.set("n", "[d", vim.diagnostic.goto_prev, opts) -- jump to previous diagnostic in buffer

      opts.desc = "Go to next diagnostic"
      keymap.set("n", "]d", vim.diagnostic.goto_next, opts) -- jump to next diagnostic in buffer

      opts.desc = "Show last opened files"
      keymap.set("n", "<leader>of", "<cmd>Telescope oldfiles<CR>", opts) -- show last opened files

      opts.desc = "Show documentation for what is under cursor"
      keymap.set("n", "K", vim.lsp.buf.hover, opts) -- show documentation for what is under cursor

      opts.desc = "Restart LSP"
      keymap.set("n", "<leader>rs", ":LspRestart<CR>", opts) -- mapping to restart lsp if necessary
    end

    local capabilities = cmp_nvim_lsp.default_capabilities()

    -- Setear capabilities a todos los servidores
    vim.lsp.config('*', {
      capabilities = capabilities,
      on_attach = on_attach
    })

    -- lua_ls
    vim.lsp.config("lua_ls", {
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" }
          },
          completion = {
            callSnippet = "Replace"
          },
        }
      }
    })

    -- ts_ls
    vim.lsp.config("ts_ls", {
      cmd = { "typescript-language-server", "--stdio" },
      filetypes = {
        "javascript", "javascriptreact",
        "typescript", "typescriptreact"
      }
    })

    -- Enablear servidores
    vim.lsp.enable({
      "lua_ls",
      "ts_ls",
      "eslint",
      "javascript",
      "typescript",
      "tsx",
    })
  end
}
