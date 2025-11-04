local M = {}

function M.hello()
  local msg = "Hello, World 🤠"

  local buf = vim.api.nvim_create_buf(false, true)
  vim.api.nvim_buf_set_lines(buf, 0, -1, false, { msg })

  local width = 20
  local height = 1
  local ops = {
    relative = "editor",
    width = width,
    height = height,
    col = (vim.o.columns - width) / 2,
    row = (vim.o.lines - height) / 2 - 1,
    style = "minimal",
    border = "rounded",
  }
  vim.api.nvim_open_win(buf, true, ops)
end

return M
