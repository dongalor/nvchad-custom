local present, prettier = pcall(require, "prettier")

if not present then
  return
end

prettier.setup {
  bin = "prettierd",
  filetypes = {
    "json",
    "css",
    "javascript",
    "javascriptreact",
    "vue",
    "typescript",
    "typescriptreact",
    "json",
    "scss",
    "less",
    "html",
    "lua",
  },
}
