return {
  "folke/noice.nvim",
  opts = function(_, opts)
    opts.routes = opts.routes or {}
    table.insert(opts.routes, {
      filter = {
        event = "lsp",
        kind = "progress",
        find = "Validate documents",
      },
      opts = { skip = true },
    })
    table.insert(opts.routes, {
      filter = {
        event = "lsp",
        kind = "progress",
        find = "Publish Diagnostics",
      },
      opts = { skip = true },
    })
  end,
}
