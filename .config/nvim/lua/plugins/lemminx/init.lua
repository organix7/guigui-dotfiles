local lemminx_jars = {}
for _, bundle in ipairs(vim.split(vim.fn.glob("$HOME/tools/nvim-extensions/lemminx/lemminx-ls/*.jar"), "\n")) do
  table.insert(lemminx_jars, bundle)
end
for _, bundle in ipairs(vim.split(vim.fn.glob("$HOME/tools/nvim-extensions/lemminx/lemminx-maven/*.jar"), "\n")) do
  table.insert(lemminx_jars, bundle)
end
-- NOTE: install lemminx with maven extension by run - ~/dotfiles/bin/install/nvim/ls/lemminx-maven/load_and_build_all.sh
-- dd(vim.fn.join(lemminx_jars, ":"))

return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      lemminx = {
        cmd = {
          "java",
          "-cp",
          vim.fn.join(lemminx_jars, ":"),
          "org.eclipse.lemminx.XMLServerLauncher",
        },
        filetypes = { "xml", "xsd", "xsl", "xslt", "svg" },
        root_dir = vim.fs.root(0, { ".git" }) or vim.uv.cwd(),
        single_file_support = true,
        settings = {
          xml = {
            format = {
              enabled = true, -- Enable/disable XML formatting
              insertSpaces = true, -- indent using spaces
              tabSize = 4, -- amount of spaces to indent by if insertSpaces == true
              spaceBeforeEmptyCloseTag = false, -- Insert space before end of self-closing tags
            },
          },
        },
      },
    },
  },
}
