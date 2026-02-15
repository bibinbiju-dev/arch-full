return {
  "MeanderingProgrammer/render-markdown.nvim",
  ft = { "markdown" }, -- load only for markdown files
  opts = {
    heading = {
      enabled = true,
      render_modes = true,
      atx = true,
      setext = true,
      -- sign = { "󰫎 " },
      sign = true,
      width = "block",
      icons = { "󰼏 ", "󰎨 ", "󰼐 ", "󰎲 ", "󰼑 ", "󰎴 " },
      position = "overlay",
    },

    checkbox = {
      enabled = true,
      render_modes = true,
      unchecked = {
        -- Replaces '[ ]' of 'task_list_marker_unchecked'.
        icon = "󰄱 ",
        -- Highlight for the unchecked icon.
        highlight = "RenderMarkdownUnchecked",
        -- Highlight for item associated with unchecked checkbox.
        scope_highlight = nil,
      },
      checked = {
        -- Replaces '[x]' of 'task_list_marker_checked'.
        icon = "󰱒 ",
        -- Highlight for the checked icon.
        highlight = "RenderMarkdownChecked",
        -- Highlight for item associated with checked checkbox.
        scope_highlight = nil,
      },
    },
  },
}
