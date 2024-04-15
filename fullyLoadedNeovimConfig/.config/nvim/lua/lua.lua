local root_dirname = vim.fs.dirname(vim.fs.find({
    ".luarc.json", ".luarc.jsonc", ".luacheckrc", ".stylua.toml", "stylua.toml", "selene.toml", "selene.yml", ".git"}, { upward = true })[1])

print(string.format("Lua Project Dir:", root_dirname))

vim.lsp.start({
  name = "lua-ls",
  cmd = { "lua-language-server" },
  root_dir = root_dirname
})

