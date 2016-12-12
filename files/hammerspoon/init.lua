-- Set hyper to cmd + shift
local hyper      = {'cmd', 'shift'}
--
-- -- Move Mouse to center of next Monitor
hs.hotkey.bind(hyper, '`', function()
    local screen = hs.mouse.getCurrentScreen()
    local nextScreen = screen:next()
    local rect = nextScreen:fullFrame()
    local center = hs.geometry.rectMidPoint(rect)

    hs.mouse.setAbsolutePosition(center)
end)

hs.hotkey.bind(hyper, 'L', function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    f. x = f.x + 10
    win:setFrame(f)
end)

hs.hotkey.bind(hyper, 'H', function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    f. x = f.x - 10
    win:setFrame(f)
end)

hs.hotkey.bind(hyper, 'K', function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    f. y = f.y + 10
    win:setFrame(f)
end)

hs.hotkey.bind(hyper, 'J', function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    f. y = f.y - 10
    win:setFrame(f)
end)
