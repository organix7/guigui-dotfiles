return {
  "ibhagwan/fzf-lua",
  opts = function(_, opts)
    opts.fzf_colors = { true, bg = "-1", gutter = "-1" }
    return opts
  end,
}
