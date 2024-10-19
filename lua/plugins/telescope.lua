return {
  "nvim-telescope/telescope.nvim",
  opts = function(_, opts)
    -- Extender la configuración existente sin sobrescribirla
    opts.defaults = vim.tbl_deep_extend("force", opts.defaults or {}, {
      file_ignore_patterns = { "%.png", "%.gif" }, -- Ignorar archivos .png or .gif
    })
  end,
}
