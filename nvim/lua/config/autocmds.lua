-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

local patched_queries = false

local function patch_vim_treesitter_query()
  if patched_queries then
    return
  end

  local query = vim.treesitter.query
  if not query or not query.set then
    return
  end

  local patches = {
    {
      pattern = "\n%s+\"substitute\"%s*\n",
      replacement = "\n",
    },
    {
      literal = "\n(heredoc\n  (parameter) @keyword)\n\n",
      replacement = "\n",
    },
    {
      literal = "\n(script\n  (parameter) @keyword)\n\n",
      replacement = "\n",
    },
  }

  local files = vim.api.nvim_get_runtime_file("queries/vim/highlights.scm", true)
  for _, path in ipairs(files) do
    local text = table.concat(vim.fn.readfile(path), "\n")
    local patched = false
    for _, patch in ipairs(patches) do
      local replacement = patch.replacement or "\n"
      local cleaned, replacements
      if patch.literal then
        local literal = patch.literal
        local start_pos = 1
        replacements = 0
        local parts = {}
        while true do
          local s, e = text:find(literal, start_pos, true)
          if not s then
            table.insert(parts, text:sub(start_pos))
            break
          end
          table.insert(parts, text:sub(start_pos, s - 1))
          table.insert(parts, replacement)
          start_pos = e + 1
          replacements = replacements + 1
        end
        cleaned = table.concat(parts)
      else
        local pattern = patch.pattern or ""
        cleaned, replacements = text:gsub(pattern, replacement)
      end

      if replacements > 0 then
        text = cleaned
        patched = true
      end
    end

    if patched then
      local ok, err = pcall(query.set, "vim", "highlights", text)
      if not ok then
        vim.notify("Failed to patch vim treesitter query: " .. err, vim.log.levels.ERROR)
      end
      patched_queries = ok
      return
    end
  end
end

patch_vim_treesitter_query()

vim.api.nvim_create_autocmd("User", {
  pattern = "LazyDone",
  once = true,
  callback = patch_vim_treesitter_query,
})

vim.api.nvim_create_autocmd("VimEnter", {
  once = true,
  callback = patch_vim_treesitter_query,
})
