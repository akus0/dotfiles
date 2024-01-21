return
{
  "b0o/incline.nvim",
  dependencies = { "rose-pine/nvim" }, -- Change to the rose-pine theme
  event = "BufReadPre",
  priority = 1200,
  config = function()
    require("rose-pine").setup({
      variant = "main",  -- Change "moon" to your desired variant
      dim_inactive_windows = false,
      extend_background_behind_borders = true,
      styles = {
        bold = true,
        italic = false,
        transparency = true,
      },
      groups = {
        InclineNormal = "iris", -- Adjust colors here
        InclineNormalNC = "surface", -- Adjust colors here
      },
    })

   require("incline").setup({
      window = { margin = { vertical = 0, horizontal = 0 } },
      hide = {
        cursorline = false,
      },
      render = function(props)
        local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
        local icon, color = require("nvim-web-devicons").get_icon_color(filename)

        local status = ""
        if vim.bo[props.buf].modified then
          status = " "
        end

        return { { icon, guifg = color }, { " " }, { filename }, { status } }
      end,
    })
  end,
}
