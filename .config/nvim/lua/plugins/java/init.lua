return {
  {
    "nvim-java/nvim-java",
    ft = "java",
    config = function()
      require("java").setup()
      local dap = require("dap")

      dap.configurations.java = {
        {
          mainClass = "",
          projectName = "",
          type = "java",
          request = "attach",
          name = "Debug (Attach) - Remote",
          hostName = "127.0.0.1",
          port = 5005,
        },
      }
    end,
  },
}
