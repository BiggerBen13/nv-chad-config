-- custom/configs/null-ls.lua

local null_ls = require "null-ls"

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics

local sources = {
  -- Formatting LSPs
  formatting.prettier,
  formatting.stylua,
  formatting.rustfmt,
  formatting.clang_format,

  lint.shellcheck,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
