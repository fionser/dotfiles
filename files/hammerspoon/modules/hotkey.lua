local hotkey = require "hs.hotkey"

hyper = {'ctrl', 'cmd'}
hyperShift = {'ctrl', 'cmd', 'shift'}

function moveMouse(screen)
    if not screen then
        hs.alter("no screen")
        return
    end
    local rect = screen:fullFrame()
    local center = hs.geometry.rectMidPoint(rect)
    hs.mouse.setAbsolutePosition(center)
end

-- -- Move mouse to next monitor
hotkey.bind(hyper, 'm', function()
    local screen = hs.mouse.getCurrentScreen()
    local nextScreen = screen:next()
    moveMouse(nextScreen)
end)

