return {
  url = "https://codeberg.org/andyg/leap.nvim",
  config = function()
    local leap = require('leap')
    leap.opts.vim_opts['go.ignorecase'] = true
  end
}
