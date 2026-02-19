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
    picker = {
      name = "telescope.nvim",
    },

    templates = {
      folder = "~/Documents/templates",
      date_format = "%d-%m-%Y",
      time_format = "%H:%M",
    },

    -- see below for full list of options 👇
    notes_subdir = "",
    daily_notes = {
      folder = "Daily/",
      date_format = "%d-%m-%Y",
      alias_format = "%B %-d, %y",
      default_tags = { "daily-notes" },
      template = "daily.md",
    },

    -- note_id_func = function(title)
    --   local id = os.date("%Y%m%d%H%M")
    --
    --   if title ~= nil then
    --     title = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
    --     return id .. "-" .. title
    --   else
    --     return id
    --   end
    -- end,

    note_id_func = function(title)
      local notes_dir = vim.fn.expand("~/Documents/")
      local counter_file = notes_dir .. ".note_counter"

      vim.fn.mkdir(notes_dir, "p")

      local current = 0
      if vim.fn.filereadable(counter_file) == 1 then
        current = tonumber(vim.fn.readfile(counter_file)[1]) or 0
      end

      local new_id = string.format("%05d", current + 1)

      vim.fn.writefile({ tostring(current + 1) }, counter_file)

      if title then
        title = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
        return new_id .. "-" .. title
      end

      return new_id
    end,
    follow_url_func = function(url)
      vim.fn.jobstart({ "xdg-open", url })
    end,

    follow_img_func = function(img)
      vim.fn.jobstart({ "xdg-open", img })
    end,
  },
}
