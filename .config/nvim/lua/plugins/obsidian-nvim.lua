return {
  "epwalsh/obsidian.nvim",
  version = "*", -- recommended, use latest release instead of latest commit
  lazy = true,
  ft = "markdown",
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  -- event = {
  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
  --   -- refer to `:h file-pattern` for more examples
  --   "BufReadPre path/to/my-vault/*.md",
  --   "BufNewFile path/to/my-vault/*.md",
  -- },
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",
    "hrsh7th/nvim-cmp",
    "nvim-telescope/telescope.nvim",
    "nvim-treesitter",
    -- see below for full list of optional dependencies 👇
  },
  opts = {
    -- Optional, completion of wiki links, local markdown links, and tags using nvim-cmp.
    completion = {
      -- Set to false to disable completion.
      nvim_cmp = true,
      -- Trigger completion at 2 chars.
      min_chars = 2,
    },

    workspaces = {
      {
        name = "NOTES",
        path = "/home/bibin/Documents/NOTES",
      },
      {
        name = "CONFIG",
        path = "/home/bibin/Documents/CONFIG",
      },
      {
        name = "Documents",
        path = "/home/bibin/Documents/",
      },
    },

    -- attachments = {
    --   img_folder = "assets/img",
    -- },
    --
    -- picker = {
    --   name = "telescope.nvim",
    -- },
    --
    templates = {
      folder = "~/Documents/templates",
      date_format = "%d-%m-%Y",
      time_format = "%H:%M",
    },

    -- see below for full list of options 👇
    notes_subdir = "",
    daily_notes = {
      folder = "NOTES/Daily/",
      date_format = "%d-%m-%Y",
      alias_format = "%B %-d, %y",
      default_tags = { "daily-notes" },
      template = "daily.md",
    },

    note_id_func = function(title)
      local id = os.date("%Y%m%d%H%M")

      if title ~= nil then
        title = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
        return id .. "-" .. title
      else
        return id
      end
    end,
  },

  -- Optional, by default when you use `:ObsidianFollowLink` on a link to an external
  -- URL it will be ignored but you can customize this behavior here.
  ---@param url string
  follow_url_func = function(url)
    -- Open the URL in the default web browser.
    -- vim.fn.jobstart({"open", url})  -- Mac OS
    vim.fn.jobstart({ "xdg-open", url }) -- linux
    -- vim.cmd(':silent exec "!start ' .. url .. '"') -- Windows
    -- vim.ui.open(url) -- need Neovim 0.10.0+
  end,

  -- Optional, by default when you use `:ObsidianFollowLink` on a link to an image
  -- file it will be ignored but you can customize this behavior here.
  ---@param img string
  follow_img_func = function(img)
    -- vim.fn.jobstart { "qlmanage", "-p", img }  -- Mac OS quick look preview
    vim.fn.jobstart({ "xdg-open", img }) -- linux
    -- vim.cmd(':silent exec "!start ' .. url .. '"') -- Windows
  end,
}
