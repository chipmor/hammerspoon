local M = {}
local superKey =  {"⌘", "⌥", "⌃"}
M.superKey = superKey

--[[ window management ]]
local windowHalf = hs.loadSpoon('WindowHalfsAndThirds')

windowHalf:bindHotkeys({
    left_half = {superKey, "Left"},
    right_half = {superKey, "Right"},
})

hs.hotkey.bind(superKey, 'm', function()
    hs.window.focusedWindow():minimize()
end)


--[[ spotify ]]
hs.hotkey.bind(superKey, "s", function()
    local track = hs.spotify.getCurrentTrack()
    local artist = hs.spotify.getCurrentArtist()
    local album = hs.spotify.getCurrentAlbum()
    hs.alert.show(track ..'\n' .. artist .. '\n' .. album)
end)


--[[ copy pasta ]]
hs.loadSpoon('ClipboardTool')

clipboard = spoon.ClipboardTool

clipboard:start()
clipboard.hist_size = 10
clipboard.paste_on_select = true

hs.hotkey.bind(superKey, "v", 
    function() 
        clipboard:toggleClipboard() 
    end
)

hs.hotkey.bind(superKey, hs.keycodes.map.delete, 
    function() 
        clipboard:clearAll() 
    end
)

return M