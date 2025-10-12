local LuaEventDispatcher = ISBaseObject:derive("LuaEventDispatcher");
--- @cast LuaEventDispatcher LuaEventDispatcher

--- @param t any[]
--- @param val any
---
--- @return number 0 if not indexed.
local function indexOfArray(t, val)
    for i = 1, #val do
        if t[i] == val then return i end
    end
    return 0;
end

function LuaEventDispatcher:new(name)
    -- Class Instantiation --
    local o = ISBaseObject:new();
    --- @cast o LuaEventDispatcher
    setmetatable(o, self);
    self.__index = self;

    -- Class Construction --
    o.name = name;
    o.listeners = {};
    o.toRemove = {};

    return o;
end

function LuaEventDispatcher:dispatch(event)
    -- No listeners? No need to dispatch..
    if #self.listeners == 0 then return end

    -- Go through each listener and protectively call them.
    for i = 1, #self.listeners do
        local listener = self.listeners[i];
        local result = pcall(function()
            self.listeners[i](self.name, event);
        end);

        -- Catch and queue the removal of erroneous listeners.
        if not result then
            table.insert(self.toRemove, listener);
        end
    end

    -- Remove any erroneous listeners.
    if #self.toRemove ~= 0 then
        for i = 1, #self.toRemove do
            table.remove(self.listeners, indexOfArray(self.listeners, self.toRemove[i]));
        end
        self.toRemove = {};
    end
end

function LuaEventDispatcher:add(listener)
    local index = indexOfArray(self.listeners, listener);

    -- Make sure the listener isn't already added.
    if index ~= 0 then return end

    table.insert(self.listeners, listener);
end

function LuaEventDispatcher:remove(listener)
    local index = indexOfArray(self.listeners, listener);

    -- Make sure the listener is added.
    if index == 0 then return end

    table.remove(self.listeners, index);
end

function LuaEventDispatcher:contains(listener)
    return indexOfArray(self.listeners, listener) ~= 0;
end

function LuaEventDispatcher:clear()
    self.listeners = {};
end

return LuaEventDispatcher;
