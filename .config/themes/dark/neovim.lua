return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      style = "night",
      transparent = false,

      styles = {
        sidebars = "dark",
        floats = "dark",
      },

      on_colors = function(colors)
        colors.bg = "#000000"
        colors.bg_dark = "#000000"
        colors.bg_float = "#000000"
        colors.bg_sidebar = "#000000"
      end,

      on_highlights = function(hlc)
        hlc.Normal = { bg = "#000000" }
        hlc.NormalFloat = { bg = "#000000" }
        hlc.FloatBorder = { bg = "#000000" }
      end,
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight-night",
    },
  },
}
