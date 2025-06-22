return {
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      -- UI opcional pero muy útil
      "rcarriga/nvim-dap-ui",
      "theHamsta/nvim-dap-virtual-text",
      "nvim-neotest/nvim-nio",
      -- Adaptadores por lenguaje
      "jay-babu/mason-nvim-dap.nvim",
      "williamboman/mason.nvim",
    },
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")

      require("dapui").setup()
      require("nvim-dap-virtual-text").setup()

      -- Configura automáticamente adaptadores con Mason
      require("mason").setup()
      require("mason-nvim-dap").setup({
        automatic_setup = true,
      })

      -- Hooks UI para abrir/cerrar automáticamente
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end
      local dap = require("dap")
      local dapui = require("dapui")

      vim.keymap.set("n", "<Leader>dc", dap.continue)
      vim.keymap.set("n", "<F10>", dap.step_over)
      vim.keymap.set("n", "<F11>", dap.step_into)
      vim.keymap.set("n", "<F12>", dap.step_out)
      vim.keymap.set("n", "<Leader>dt", dap.toggle_breakpoint)
      vim.keymap.set("n", "<Leader>ds", function()
          dap.set_breakpoint(vim.fn.input("Breakpoint condition: "))
      end)
      vim.keymap.set("n", "<Leader>dr", dap.repl.open)
      vim.keymap.set("n", "<Leader>dl", dap.run_last)
      vim.keymap.set("n", "<Leader>du", dapui.toggle)
    end,
  },
}

