return {
  "Wansmer/treesj",
  keys = {
    { "<leader>m", "<cmd>TSJToggle<CR>", desc = "Toggle Treesitter join" },
  },
  cmd = { "TSJToggle", "TSJSplit", "TSJJoin" },
  opts = { use_defaults_keymaps = false },
}
