local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  b.formatting.deno_fmt,
  b.formatting.prettier.with { filetypes = { "vue", "lua", "html", "markdown", "css", "typescript", "javascript", "json" } },

  -- Lua
  b.formatting.stylua,
  b.formatting.google_java_format,

  -- Shell
  b.formatting.shfmt,
  b.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },
  b.diagnostics.jsonlint,
  b.diagnostics.rubocop,

  -- cpp
  b.formatting.clang_format,

  b.code_actions.eslint_d.with { filetypes = { "html", "markdown", "css", "typescript", "javascript" } },
  b.code_actions.shellcheck,
}

null_ls.setup {
  debug = false,
  sources = sources,
}
