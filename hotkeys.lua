local super =  {"⌘", "⌥", "⌃"}


--[[ window management ]]
window = require('WindowHalfsAndThirds')

window:bindHotkeys({
    right_half = {super, "Right"},
    left_half = {super, "Left"},
})


--[[ 

---- other way of trying it 

hs.loadSpoon('WindowHalfsAndThirds')

spoon.WindowHalfsAndThirds:bindHotkeys({ 
    left_half = {super, "Left"},
    right_half = {super, "Right"},
})
win = hs.window.focusedWindow()
spoon.WindowHalfsAndThirds:leftHalf(win) ]]


--[[ spotify ]]
hs.hotkey.bind(super, "s", function()
    local track = hs.spotify.getCurrentTrack()
    local artist = hs.spotify.getCurrentArtist()
    local album = hs.spotify.getCurrentAlbum()
    hs.alert.show(track ..'\n' .. artist .. '\n' .. album)
end)


--[[ copy pasta ]]
clipboard = require("ClipboardTool")
clipboard:start()


hs.hotkey.bind(super, "v", function() clipboard:toggleClipboard() end)
hs.hotkey.bind(super, hs.keycodes.map.delete, function() clipboard:clearAll() end)
