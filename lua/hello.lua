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
  local win_id = vim.api.nvim_open_win(buf, true, ops)
  vim.defer_fn(function()
    vim.api.nvim_win_close(win_id, true)
  end, 1000)
end

return M
