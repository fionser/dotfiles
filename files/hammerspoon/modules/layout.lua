local tiling = require "modules/tiling"
local hotkey = require "hs.hotkey"
local events = hs.uielement.watcher

tiling.set('layouts', {
	'main-vertical-variable',
})

hs.window.animationDuration = 0
hotkey.bind(hyper, "c", function() tiling.cycleLayout() end)
hotkey.bind(hyper, "j", function() tiling.cycle(1) end)
hotkey.bind(hyper, "k", function() tiling.cycle(-1) end)
hotkey.bind(hyper, "left", function() tiling.adjustMainVertical(-0.05) end)
hotkey.bind(hyper, "right", function() tiling.adjustMainVertical(0.05) end)
hotkey.bind(hyper, "=", function() tiling.setMainVertical(0.5) end)



watchers = {}

function init()
	appsWatcher = hs.application.watcher.new(handleGlobalAppEvent)
	appsWatcher:start()

	-- Watch any apps that already exist
	local apps = hs.application.runningApplications()
	for i = 1, #apps do
		if apps[i]:title() ~= "Hammerspoon" then
			watchApp(apps[i], true)
		end
	end
end

function handleGlobalAppEvent(name, event, app)
	if     event == hs.application.watcher.launched then
		watchApp(app)
	elseif event == hs.application.watcher.terminated then
		-- Clean up
		local appWatcher = watchers[app:pid()]
		if appWatcher then
			appWatcher.watcher:stop()
			for id, watcher in pairs(appWatcher.windows) do
				watcher:stop()
			end
			watchers[app:pid()] = nil
		end
	end
end

function watchApp(app, initializing)
	if watchers[app:pid()] then return end

	local watcher = app:newWatcher(handleAppEvent)
	watchers[app:pid()] = {watcher = watcher, windows = {}}

	watcher:start({events.windowCreated, events.focusedWindowChanged})

	-- Watch any windows that already exist
	for i, window in pairs(app:allWindows()) do
		watchWindow(window, initializing)
	end
end

function handleAppEvent(element, event)
	if event == events.windowCreated then
		watchWindow(element)
	elseif event == events.focusedWindowChanged then
		-- Handle window change
	end
end

function watchWindow(win, initializing)
	local appWindows = watchers[win:application():pid()].windows
	if win:isStandard() and not appWindows[win:id()] then
		local watcher = win:newWatcher(handleWindowEvent, {pid=win:pid(), id=win:id()})
		appWindows[win:id()] = watcher

		watcher:start({events.elementDestroyed})

		if not initializing then
			tiling.goToLayout('main-vertical-variable')
		end
	end
end

function handleWindowEvent(win, event, watcher, info)
	if event == events.elementDestroyed then
		watcher:stop()
		watchers[info.pid].windows[info.id] = nil
	else
		-- Handle other events...
	end
	tiling.goToLayout('main-vertical-variable')
end

init()
