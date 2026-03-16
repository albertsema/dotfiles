return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    init = function()
      vim.api.nvim_create_autocmd("VimEnter", {
        once = true,
        callback = function()
          if vim.fn.argc() ~= 1 then
            return
          end

          local dir = vim.api.nvim_buf_get_name(0)
          if dir == "" or vim.fn.isdirectory(dir) == 0 then
            return
          end

          dir = vim.fn.fnamemodify(dir, ":p")

          vim.schedule(function()
            local dir_buf = vim.api.nvim_get_current_buf()

            vim.cmd.enew()
            pcall(vim.api.nvim_buf_delete, dir_buf, { force = true })
            require("neo-tree.command").execute({
              action = "focus",
              dir = dir,
              position = "left",
              reveal = true,
              source = "filesystem",
            })
          end)
        end,
      })
    end,
  },
}
