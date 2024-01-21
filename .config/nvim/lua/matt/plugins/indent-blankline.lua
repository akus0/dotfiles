return
  {
    'lukas-reineke/indent-blankline.nvim', version = 'v3.*',
    lazy = true,
    event = 'BufReadPost',
    config = function()
      local hooks = require('ibl.hooks')
      hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
        vim.api.nvim_set_hl(0, 'IBLScope', { fg = '#524e5c' })
        vim.api.nvim_set_hl(0, 'IBLGrey', { fg = '#343a45' }) 
      end)

      require('ibl').setup({
        exclude = {
          filetypes = {
            'nvim-tree',
            'lazy',
          },
        },
        indent = {
          char ="▏",
          highlight = {'IBLGrey'},
          smart_indent_cap = true,
        },
        scope = {
          enabled = true,
          show_start = false,
          show_end = false,
          highlight = {
            'IBLScope',
          },
        },
      })
    end
  }
