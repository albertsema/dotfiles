-- Custom actions that replace herdr's worktree, scrollback and agent features.

local terminal = "com.superlogical.terminal"
local shell = "com.superlogical.terminal.shell"

-- The directory the focused shell last reported, or nil.
local function focused_dir(ctx)
  local r = rex.block.call(terminal, "pwd", { block_id = ctx.block_id })
  if r == nil or r.pwd == nil then return nil end
  return (r.pwd:gsub("^file://[^/]*", ""):gsub("%%(%x%x)", function(h)
    return string.char(tonumber(h, 16))
  end))
end

-- A new tab with a shell in the focused pane's directory that types `input`.
local function shell_tab(ctx, label, input)
  local _, err = rex.session.new_window{
    window_label = label,
    layout = rex.layout.block{
      flavor = shell,
      options = { cwd = focused_dir(ctx), initial_input = input },
    },
  }
  if err ~= nil then error(err, 0) end
end

rex.action{
  name = "worktree_open",
  title = "Open Worktree…",
  category = "Worktree",
  keywords = "git worktree switch branch wt worktrunk",
  run = function(ctx)
    shell_tab(ctx, "worktree", "wt switch\n")
  end,
}

rex.action{
  name = "worktree_new",
  title = "New Worktree…",
  category = "Worktree",
  keywords = "git worktree create branch wt worktrunk",
  run = function(ctx)
    -- No trailing newline: the branch name is typed by hand.
    shell_tab(ctx, "worktree", "wt switch --create ")
  end,
}

rex.action{
  name = "scrollback_edit",
  title = "Edit Scrollback in Neovim",
  category = "Pane",
  keywords = "scrollback copy mode history capture nvim editor",
  run = function(ctx)
    local r, err = rex.block.call(terminal, "format", {
      block_id = ctx.block_id,
      format = "text",
      unwrap = true,
      trim = true,
    })
    if r == nil then error(err, 0) end

    local path = os.tmpname() .. ".scrollback"
    local f = assert(io.open(path, "w"))
    f:write(r.content or "")
    f:close()

    local _, werr = rex.session.new_window{
      window_label = "scrollback",
      layout = rex.layout.block{
        flavor = shell,
        options = { command = { "nvim", "+", path } },
      },
    }
    if werr ~= nil then error(werr, 0) end
  end,
}

rex.action{
  name = "session_goto",
  title = "Go to Session by Number",
  category = "Session",
  keywords = "session switch index number",
  args = { index = "number" },
  run = function(ctx, args)
    local list, err = rex.call("session.list")
    if list == nil then error(err, 0) end
    local s = (list.sessions or {})[args.index]
    if s == nil then error("No session " .. args.index, 0) end
    rex.client.queue("session.select", { session_id = s.session_id })
  end,
}

-- States worth jumping to, most urgent first.
local jump_states = { "blocked", "error", "done" }

rex.action{
  name = "agent_jump",
  title = "Jump to Agent Needing Attention",
  category = "Agents",
  keywords = "agent blocked done waiting permission claude codex notification",
  run = function(ctx)
    local list, err = rex.call("session.list")
    if list == nil then error(err, 0) end

    local found = {}
    for _, s in ipairs(list.sessions or {}) do
      -- Calls into a session fail until the action is attached to it.
      rex.call("session.attach", { session_id = s.session_id })
      local blocks = rex.session.list_blocks{ session_id = s.session_id }
      for _, b in ipairs(blocks and blocks.blocks or {}) do
        if b.block_id ~= nil and b.creator_name == terminal and b.block_id ~= ctx.block_id then
          local st = rex.block.call(terminal, "program_status", {
            session_id = s.session_id,
            block_id = b.block_id,
          })
          for _, rec in ipairs(st and st.records or {}) do
            found[rec.state] = found[rec.state] or { session_id = s.session_id, block_id = b.block_id }
          end
        end
      end
    end

    for _, state in ipairs(jump_states) do
      local hit = found[state]
      if hit ~= nil then
        rex.client.queue("session.select", { session_id = hit.session_id })
        rex.call("session.attach", { session_id = hit.session_id })
        rex.session.focus_block(hit)
        return { state = state, block_id = hit.block_id }
      end
    end
    error("No agent is blocked, failing, or done", 0)
  end,
}
