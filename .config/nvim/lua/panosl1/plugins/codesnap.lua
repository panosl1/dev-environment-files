return {
  {
    "mistricky/codesnap.nvim",
    build = "make",
    config = function()
      require("codesnap").setup({
        border = "rounded",
        has_breadcrumbs = true,
        bg_theme = "grape",
        watermark = "",
      })
    end,
  },
}
