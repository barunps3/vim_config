local root_dirname = vim.fs.dirname(vim.fs.find({
    'pyproject.toml',
    'setup.py',
    'requirements.txt'}, { upward = true })[1])


vim.lsp.start({
    name = "pyright",
    cmd = { "pyright-langserver", "--stdio" },
    root_dir = root_dirname,
    settings = {
      python = {
        analysis = {
          autoSearchPaths = true,
          useLibraryCodeForTypes = true,
          diagnosticMode = 'openFilesOnly',
        },
      },
    },
    print(string.format("Python Project Dir:%s", root_dirname))
})
