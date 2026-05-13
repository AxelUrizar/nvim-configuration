return {
  'nvim-treesitter/nvim-treesitter',
  branch = 'main',
  build = ':TSUpdate',
  main = 'nvim-treesitter',
  opts = {},
  init = function()
    vim.api.nvim_create_autocmd('FileType', {
      callback = function()
        -- Highlighting nativo (sin regex syntax)
        pcall(vim.treesitter.start)
        -- Indentación basada en Treesitter
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
      end,
    })

    -- Instalar parsers necesarios
    local ensure_installed = {
      'typescript', 'tsx',
      'javascript', 'jsx',
      'html',
      'css',
      'lua',
      'json',
    }
    local installed = require('nvim-treesitter.config').get_installed()
    local to_install = vim.iter(ensure_installed)
      :filter(function(p) return not vim.tbl_contains(installed, p) end)
      :totable()
    if #to_install > 0 then
      require('nvim-treesitter').install(to_install)
    end
  end,
}
