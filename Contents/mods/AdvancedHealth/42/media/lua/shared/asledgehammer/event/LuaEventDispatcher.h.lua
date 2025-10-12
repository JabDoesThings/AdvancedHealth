--- @meta _

--- @class LuaEventDispatcher: ISBaseObject
--- @field __index LuaEventDispatcher
---
--- @field name string The name of the event.
--- @field listeners LuaEventListener[] The active-listeners for the dispatcher.
--- @field toRemove LuaEventListener[] Used to remove erroneous listeners from the dispatcher.
local LuaEventDispatcher = {};

--- @param name string The name of the event.
---
--- @return LuaEventDispatcher
function LuaEventDispatcher:new(name) end

--- @param event LuaEvent
function LuaEventDispatcher:dispatch(event) end

--- @param listener LuaEventListener The listener to add.
function LuaEventDispatcher:add(listener) end

--- @param listener LuaEventListener The listener to remove.
function LuaEventDispatcher:remove(listener) end

--- Clears all active listeners in the dispatcher.
function LuaEventDispatcher:clear() end

--- @param listener LuaEventListener
---
--- @return boolean result True if the listener is registered to the dispatcher.
function LuaEventDispatcher:contains(listener) end
