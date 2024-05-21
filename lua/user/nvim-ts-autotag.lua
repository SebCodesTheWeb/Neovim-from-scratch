
local status_ok, nautotag = pcall(require, "nvim-ts-autotag")
if not status_ok then
  return
end

nautotag.setup {}

