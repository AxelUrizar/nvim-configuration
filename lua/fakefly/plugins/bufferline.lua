return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  version = "*",
  opts = {
    options = {
      diagnostics = "nvim-lsp",
      mode = "buffers",
      separator_style = "slant",
    }
  },
  config = function ()
    require('bufferline').setup({
      options = {
        diagnostics = "nvim-lsp",
        mode = "buffers",
        separator_style = "slant",
      },
      highlights = {
        fill = {
          fg = 'none',
          bg = 'none'
        },
        background = {
          fg = '#606060',
          bg = '#171717'
        },
        buffer_visible = {
          fg = '#606060',
          bg = '#171717'
        },
        buffer_selected = {
          fg = '#ffffff',
          bg = '#171717',
          bold = true,
          italic = true
        },
        separator_selected = {
          fg = '#202020',
          bg = '#171717',
        },
        separator_visible = {
          fg = '#202020',
          bg = '#171717',
        },
        separator = {
          fg = '#202020',
          bg = '#171717',
        },
        close_button = {
          fg = '#606060',
          bg = '#171717',
        },
        close_button_visible = {
          fg = '#606060',
          bg = '#171717',
        },
        close_button_selected = {
          fg = '#606060',
          bg = '#171717',
        },
      }
    })
  end
}

-- return {
--   "romgrk/barbar.nvim",
--   config = function ()
--     local map = vim.api.nvim_set_keymap
--     local opts = { noremap = true, silent = true }
--
--     -- Move to previous/next
--     map('n', '<A-h>', '<Cmd>BufferPrevious<CR>', opts)
--     map('n', '<A-l>', '<Cmd>BufferNext<CR>', opts)
--
--     local nvim_tree_events = require('nvim-tree.events')
--     local bufferline_api = require('bufferline.api')
--
--     local function get_tree_size()
--       return require'nvim-tree.view'.View.width
--     end
--
--     nvim_tree_events.subscribe('TreeOpen', function()
--       bufferline_api.set_offset(get_tree_size())
--     end)
--
--     nvim_tree_events.subscribe('Resize', function()
--       bufferline_api.set_offset(get_tree_size())
--     end)
--
--     nvim_tree_events.subscribe('TreeClose', function()
--       bufferline_api.set_offset(0)
--     end)
--
--   end
-- }
