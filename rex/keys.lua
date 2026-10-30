-- tmux-style key map with a Ctrl-a prefix, ported from herdr/tmux.
-- Keys are written unshifted: "&" is shift+7, "?" is shift+/.

local prefix = "ctrl+a"

local function p(keys, action, args)
  if type(keys) == "string" then keys = { keys } end
  for _, k in ipairs(keys) do
    rex.bind(prefix .. ">" .. k, action, args)
  end
end

-- Press the prefix twice to send it to the program.
p("ctrl+a", "pane.send_key", { key = "ctrl+a" })

-- Tabs
p({ "c", "ctrl+c" }, "client.tab.new")
p({ "r", "shift+t" }, "client.tab.rename")
p({ "p", "shift+h" }, "client.tab.previous")
p({ "n", "shift+l" }, "client.tab.next")
p("shift+7", "client.tab.close")
for i = 1, 9 do
  p(tostring(i), "client.tab.goto", { index = i })
end

-- Panes
p("s", "pane.split", { direction = "down" })
p("v", "pane.split", { direction = "right" })
p("h", "pane.focus.left")
p("j", "pane.focus.down")
p("k", "pane.focus.up")
p("l", "pane.focus.right")
p("tab", "pane.focus_previous")
p("z", "pane.zoom")
p("shift+x", "pane.close")
p("e", "scrollback_edit")
p("g", "pane.go_to_directory")

-- Resize mode: hjkl nudges, shift+hjkl jumps, = balances.
rex.mode("resize", { exclusive = true })
p({ ",", "-" }, "client.mode.enter", { name = "resize" })
for key, dir in pairs({ h = "left", j = "down", k = "up", l = "right" }) do
  rex.bind("resize/" .. key, "pane.resize", { direction = dir, amount = 5 })
  rex.bind("resize/shift+" .. key, "pane.resize", { direction = dir, amount = 20 })
end
rex.bind("resize/=", "pane.balance")
rex.bind("resize/enter", "client.mode.exit")

-- Sessions (herdr workspaces)
p("shift+s", "session.switch")
p("shift+n", "session.new")
p("shift+w", "session.rename")
p("shift+d", "session.close")
p("shift+9", "session.previous")
p("shift+0", "session.next")
for i = 1, 9 do
  rex.bind("cmd+" .. i, "session_goto", { index = i })
end

-- Agents and worktrees
p("a", "client.sidebar.activity.toggle")
p({ "o", "shift+a" }, "agent_jump")
p({ "ctrl+w", "shift+g" }, "worktree_new")
p("w", "worktree_open")

-- Find and prompts (stand-ins for copy mode)
p("/", "client.find.open")
p("[", "client.prompt.previous")
p("]", "client.prompt.next")

-- App
p("b", "client.sidebar.toggle")
p("shift+r", "client.config.reload")
p("i", "client.settings")
p("shift+/", "client.palette.toggle")
p({ "d", "ctrl+d" }, "client.window.close")
