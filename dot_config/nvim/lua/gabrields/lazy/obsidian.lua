return {
  "obsidian-nvim/obsidian.nvim",
  version = "*", -- recommended, use latest release instead of latest commit
  ft = "markdown",
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  event = {
    -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
    -- refer to `:h file-pattern` for more examples
    "BufReadPre " .. vim.fn.expand("~/Documents/Vault") .. "/*.md",
    "BufNewFile " .. vim.fn.expand("~/Documents/Vault") .. "/*.md",

  },
  -- @module 'obsidian'
  -- @type obsidian.config
  opts = {
    legacy_commands = false,
    
    notes_subdir = "/inbox",
    new_notes_location = "/inbox/",

    daily_notes = {
      date_format = "%d-%m-%Y",
      folder = "/dailes",
      workdays_only = false,
    },

    workspaces = {
      {
        name = "personal",
        path = vim.fn.expand("~/Documents/Vault"),
      },
    },
  },
}
