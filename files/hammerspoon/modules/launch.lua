local hotkey = require 'hs.hotkey'
local window = require 'hs.window'
local application = require 'hs.application'

local key2app = {
    b = 'Google Chrome',
}

hotkey.bind(hyper, 'return', function()
	toggle_application('iTerm')
end)

for key, app in pairs(key2app) do
    hotkey.bind(hyper, key, function()
        toggle_application(app)
    end)
end

hotkey.bind(hyper, 'r', function() 
	hs.reload() 
end)

-- Toggle an application between being the frontmost app, and being hidden
function toggle_application(_app)
    -- -- finds a running applications
    local app = application.find(_app)
    --
    if not app then
        -- application not running, launch app
        application.launchOrFocus(_app)
        return
    end
end
