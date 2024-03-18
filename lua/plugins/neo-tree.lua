return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    sources = { "filesystem", "buffers", "git_status", "document_symbols" },
    open_files_do_not_replace_types = { "terminal", "Trouble", "trouble", "qf", "Outline" },
    filesystem = {
      bind_to_cwd = false,
      follow_current_file = { enabled = false },
    },
  },
}
