return {
  {
    "ThePrimeagen/harpoon",
    config = function()
      require("harpoon").setup({
        global_settings = {
          save_on_toggle = false,
          save_on_change = true,
          enter_on_sendcmd = true,
          excluded_filetypes = { "harpoon" },
        },
      })
    end,
  },
}
