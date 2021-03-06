local awful = require "awful"
local naughty = require "naughty"

local M = {}

M.increase_width = function()
  awful.tag.incmwfact(0.05)
end
M.decrease_width = function()
  awful.tag.incmwfact(-0.05)
end
M.next_layout = function()
  awful.layout.inc(1)
end
M.increase_columns = function()
  awful.tag.incncol(1, nil, true)
end
M.decrease_columns = function()
  awful.tag.incncol(-1, nil, true)
end
M.increase_masters = function()
  awful.tag.incnmaster(1, nil, true)
end
M.decrease_masters = function()
  awful.tag.incnmaster(-1, nil, true)
end
M.reset_layout = function()
  local s = awful.screen.focused()
  local count = #s.tiled_clients
  awful.client.setwfact(1 / count)
  awful.setmwfact(0.5)
end

return M
