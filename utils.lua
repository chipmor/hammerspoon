local M = {}
local control = '⌥'
local ctrl = hs.keycodes.map.ctrl
local command = hs.keycodes.map.cmd
local option = hs.keycodes.map.o

M.keys = {
    control = '⌥',
    command = '⌘',
    option = '⌃',
    superKey = {option, control, command}
}


M.printObject = function (obj)
    hs.inspect(obj)
end


-- print(chartable)
return M
