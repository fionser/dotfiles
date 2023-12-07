-- Utilities for creating configurations
-- local util = require "formatter.util"

-- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
require("formatter").setup {
  -- Enable or disable logging
  logging = false,
  -- Set the log level
  log_level = vim.log.levels.WARN,
  cpp = {
    require("formatter.filetypes.cpp").clangformat,

    -- You can also define your own configuration
    function()
      -- Supports conditional formatting
      -- if util.get_current_buffer_file_name() == "special.lua" then
      --   return nil
      -- end

      -- Full specification of configurations is down below and in Vim help
      -- files
      return {
        exe = "clang-format",
        args = {},
        stdin = true,
      }
    end
  },
  -- All formatter configurations are opt-in
  filetype = {
    -- Formatter configurations for filetype "lua" go here
    -- and will be executed in order
    -- Use the special "*" filetype for defining formatter configurations on
    -- any filetype
    ["*"] = {
      -- "formatter.filetypes.any" defines default configurations for any
      -- filetype
      require("formatter.filetypes.any").remove_trailing_whitespace
    }
  }
}
