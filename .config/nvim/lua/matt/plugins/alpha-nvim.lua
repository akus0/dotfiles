return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- Set header
    dashboard.section.header.val = {
  "                                          ",
  "      ⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣶⣶⣦⣄⡀⢀⣀⣤⣤⣄     ",
  "      ⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣆⠀⠀⠀⠀⠀⠀⢀⣄⠙⢿⣿⣟⣿⣿⣿⣿⣿⠇     ",
  "      ⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⡀⠀⠀⠀⠀⢀⣿⣿⡇⠀⠈⢹⡏⠉⠉⠁⠀⠀     ",
  "      ⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⡇⠀⠀⠀⠀⢸⣿⣿⡇⠀⠀⢸⡇⠀⠀⠀⠀⠀     ",
  "      ⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣿⣿⣷⣶⣶⣶⣷⣾⣿⣿⡀⠀⠀⢸⠃⠀⠀⠀⠀⠀     ",
  "      ⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⡿⠋⢉⠙⣿⣿⣿⣿⣿⠟⠛⢦⡀⣼⠀⠀⠀⠀⠀⠀     ",
  "      ⠀⠀⠀⠀⠈⠐⢒⣾⣿⣿⣷⡀⠛⢀⣿⣿⣿⣭⣿⣈⠛⣸⣧⣿⠤⠤⠀⠀⠀⠀     ",
  "      ⠀⠀⠀⠠⠤⠒⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠤⠤⠀⠀⠀⠀     ",
  "      ⠀⠀⠀⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀     ",
  "      ⠀⠀⠀⠀⢰⣿⣿⣿⣿⣿⣿⣿⣿⡿⠛⠉⠉⠀⠀⠀⠀⠈⠙⠻⣆⠀⠀⠀⠀⠀     ",
  "                                          ",
  " █████╗ ██╗  ██╗██╗   ██╗███████╗ ██████╗ ",
  "██╔══██╗██║ ██╔╝██║   ██║██╔════╝██╔═══██╗",
  "███████║█████╔╝ ██║   ██║███████╗██║   ██║",
  "██╔══██║██╔═██╗ ██║   ██║╚════██║██║   ██║",
  "██║  ██║██║  ██╗╚██████╔╝███████║╚██████╔╝",
  "╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚══════╝ ╚═════╝ ",
  "                                          ", 
     }

    -- Set header options
    dashboard.section.header.opts = {
      position = 'center',
    } 



    local buttons = {
      type = 'group',
      val = {
        {
          type = 'text',
          val = 'Quick actions',
          opts = { position = 'center' }
        },
        {
          type = 'padding',
          val = 1,
        },
        dashboard.button('<space>n', '  New File',
                         ':enew | NvimTreeFocus<CR>',
                         { desc = 'New file' }),
        dashboard.button('<space>o', '  Old Files',
                         ':Telescope oldfiles<CR>',
                         { desc = 'Old files' }),
        dashboard.button('<space>ff', '  Find File',
                         ':Telescope find_files<CR>'),
        dashboard.button('<space>fg', '  Find in files',
                         ':Telescope live_grep<CR>'),
      }
    }

    local sessions = {
      type = 'group',
      val = function ()
        local autosession = require('auto-session')
        local sessions_root = autosession.get_root_dir()
        local sessions = autosession.get_session_files()
        local val = {
          {
            type = 'text',
            val = 'Recent Sessions',
            opts = { position = 'center' }
          },
          {
            type = 'padding',
            val = 1,
          },
        }
        table.sort(sessions, function (a, b)
          local a_time = vim.fn.getftime(sessions_root .. a.path)
          local b_time = vim.fn.getftime(sessions_root .. b.path)
          return a_time > b_time
        end)
        for i, session in ipairs(sessions) do
          if i > 8 then
            break
          end
          local sc = '<space>' .. tostring(i)
          local session_path = sessions_root .. session.path
          table.insert(val, {
            type = 'button',
            val = tostring(i) .. '\t' .. session.display_name,
            on_press = function ()
              autosession.RestoreSession(session_path)
              require('nvim-tree.api').tree.open()
            end,
            opts = {
              keymap = { 'n', sc, ':SessionRestoreFromFile ' ..
                         session_path .. '<CR>:NvimTreeFocus<CR>',
                         { desc = 'Restore session ' ..
                                  session.display_name } },
              position = 'center',
              width = 80,
              shortcut = sc,
              align_shortcut = 'right',
              hl_shortcut = 'Keyword',
            }
          })
        end
        return val
      end,
    }

    alpha.setup {
      layout = {
        {
          type = 'padding',
          val = 5, -- Adjusted padding for better centering
        },
        dashboard.section.header,
        {
          type = 'padding',
          val = 2,
        },
        buttons,
        {
          type = 'padding',
          val = 2,
        },
        sessions,
      },
    }
  end
}
