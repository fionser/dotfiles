-- Set hyper to cmd + shift
local hyper      = {'cmd', 'shift'}
--
-- -- Move Mouse to center of next Monitor
function moveMouse(screen)
    if not screen then
        hs.alter("no screen")
        return
    end
    local rect = screen:fullFrame()
    local center = hs.geometry.rectMidPoint(rect)
    hs.mouse.setAbsolutePosition(center)
end

hs.hotkey.bind(hyper, 'm', function()
    local screen = hs.mouse.getCurrentScreen()
    local nextScreen = screen:next()
    moveMouse(nextScreen)
end)

hs.hotkey.bind(hyper, 'L', function()
    local win = hs.window.focusedWindow()
    if not win then
        return
    end
    local s = win:screen():toEast()
    if s then
        win:moveToScreen(s)
        moveMouse(s)
    end
end)

hs.hotkey.bind(hyper, 'H', function()
    local win = hs.window.focusedWindow()
    if not win then
        return
    end
    local s = win:screen():toWest()
    if s then
        win:moveToScreen(s)
        moveMouse(s)
    end
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
