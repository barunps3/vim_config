local root_dirname = vim.fs.dirname(vim.fs.find({
    'pyproject.toml',
    'setup.py',
    'requirements.txt'}, { upward = true })[1])

print(string.format("Python Project Dir:", root_dirname))

vim.lsp.start({
    name = "pyright",
    cmd = { "pyright-langserver", "--stdio" },
    root_dir = nil})
