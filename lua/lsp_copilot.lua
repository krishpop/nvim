local ts_utils = require("nvim-treesitter.ts_utils")
local suggestion = require("copilot.suggestion")

local lsp_copilot = {}

lsp_copilot.some_function = function ()
  print("hello from lsp_copilot.some_function")
end

lsp_copilot.get_master_node = function ()
  local node = ts_utils.get_node_at_cursor()
  if not node then
    print("No treesitter node found")
    return {}
  end

  local start_row = node:start()
  local root = ts_utils.get_root_for_node(node)

  local parent = node:parent()
  while (parent ~= nil and parent ~= root and parent:start() == start_row) do
    node = node:parent()
  end

  return node
end

lsp_copilot.select = function()
  local node = lsp_copilot.get_master_node()
  local bufnr = vim.api.nvim_get_current_buf()
  if not node then
    print("No treesitter node found")
    return {}
  end
  ts_utils.update_selection(bufnr, node)
end

-- write a function that autocompletes a comment explaining the function using lsp_copilot
lsp_copilot.autocomplete_comment = function ()
  local function_defs = lsp_copilot.find_function_definitions()
  if not function_defs or vim.tbl_isempty(function_defs) then
    print("No function definitions found")
    return
  end
  local function_def = function_defs[1]
  local function_name = function_def.name
  local function_line = function_def.line
  local function_column = function_def.column
  local function_text = vim.api.nvim_buf_get_lines(0, function_line - 1, function_line, false)[1]
  local function_comment = "-- " .. function_text
  vim.api.nvim_buf_set_lines(0, function_line - 1, function_line, false, {function_comment})
  vim.api.nvim_win_set_cursor(0, {function_line, function_column})
end

return lsp_copilot
