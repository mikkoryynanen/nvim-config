return {
  {
    "Pocco81/auto-save.nvim",
    config = function()
      require("auto-save").setup({
        enabled = true,
        execution_message = {
          message = function()
            return ""
          end,
          dim = 0.18,
          cleaning_interval = 1250,
        },
        trigger_events = { "InsertLeave" },
        condition = function(buf)
          local fn = vim.fn
          local utils = require("auto-save.utils.data")

          if fn.getbufvar(buf, "&modifiable") == 1 and utils.not_in(fn.getbufvar(buf, "&filetype"), {}) then
            return true -- met condition(s), can save
          end
          return false -- can't save
        end,
        write_all_buffers = true,
        debounce_delay = 250,
      })
    end,
  },
}
