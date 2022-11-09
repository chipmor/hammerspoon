local M = {}
hs.loadSpoon('utils')
local utils = spoon.utils


local superKey = {'⌘', '⌥', '⌃'}
M.superKey = superKey
--[[ window management ]]
-- hs.spoons.useSpoon('WindowHalfsAndThirds',{
--     hotkeys={
--         left_half = {superKey, 'Left'},
--         right_half = {superKey, 'Right'},
--         max = {superKey, '='},
--         min = {superKey, '-'}
--     },

-- })
local windowHalf = hs.loadSpoon('WindowHalfsAndThirds')

windowHalf:bindHotkeys({
    left_half = {superKey, 'Left'},
    right_half = {superKey, 'Right'},
    larger = {superKey, '='},
    smaller = {superKey, '-'},
    max = {superKey, '/'}
})


--[[ spotify ]]
hs.hotkey.bind(superKey, 's', function()
    local track = hs.spotify.getCurrentTrack()
    local artist = hs.spotify.getCurrentArtist()
    local album = hs.spotify.getCurrentAlbum()
    hs.alert.show(track .. '\n' .. artist .. '\n' .. album)
end)


--[[ copy pasta ]]
hs.loadSpoon('ClipboardTool')

Clipboard = spoon.ClipboardTool

Clipboard:start()
Clipboard.hist_size = 10
Clipboard.paste_on_select = true

hs.hotkey.bind(superKey, 'v', function()
    Clipboard:toggleClipboard()
end)



return M
