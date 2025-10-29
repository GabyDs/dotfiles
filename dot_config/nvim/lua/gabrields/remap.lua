local wk = require "which-key"

-- Non plugins
wk.add({
  { "<leader>e", vim.cmd.Ex, desc = "Open file explorer" },
  { "<leader>s", "<cmd>write<cr>", desc = "Save file" },
})

-- Telescope
wk.add({
  { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find File", mode = "n" },
  { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live Grep", mode = "n" },
  { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers", mode = "n" },
  { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Help Tags", mode = "n" },
})

-- Obsidian
wk.add({
  { "<leader>o", "<cmd>Lazy load obsidian.nvim<cr>", desc = "Load Obsidian Plugin", mode = "n" },
})
