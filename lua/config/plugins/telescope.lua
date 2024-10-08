return {
  'nvim-telescope/telescope.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local builtin = require('telescope.builtin')

    vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
    vim.keymap.set('n', '<C-p>', builtin.git_files, {})
    vim.keymap.set('n', '<leader>ps', builtin.live_grep, {})
    vim.keymap.set('n', '<leader>pb', builtin.buffers, {})
    vim.keymap.set('n', '<leader>ph', builtin.help_tags, {})
    require('telescope').setup({
      pickers = {
        find_files = {
          theme = 'ivy',
        },
        git_files = {
          theme = 'ivy',
        },
        live_grep = {
          theme = 'ivy',
        },
        buffers = {
          theme = 'ivy',
        },
        help_tags = {
          theme = 'ivy',
        },
      },
    })
  end
}
