local configs = require("configs")

return configs.ai
    and configs.ai.enabled
    and {
      {
        "olimorris/codecompanion.nvim",
        cmd = {
          "CodeCompanion",
          "CodeCompanionActions",
          "CodeCompanionChat",
          "CodeCompanionCmd",
        },
        dependencies = {
          "nvim-lua/plenary.nvim",
          "nvim-treesitter/nvim-treesitter",
          {
            "MeanderingProgrammer/render-markdown.nvim",
            ft = { "markdown", "codecompanion" },
          },
        },
        opts = {
          strategies = {
            chat = {
              adapter = "gemini",
            },
            inline = {
              adapter = "gemini",
            },
          },
          gemini = function()
            return require("codecompanion.adapters").extend("gemini", {
              schema = {
                model = {
                  default = "gemini-2.0-flash",
                },
              },
              env = {
                api_key = "GEMINI_API_KEY",
              },
            })
          end,
          display = {
            diff = {
              provider = "mini_diff",
            },
          },
        },
      },
    }
  or {}
