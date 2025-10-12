local LuaEvent = require 'asledgehammer/event/LuaEvent';

local AHEvent = LuaEvent:derive('AHEvent');
--- @cast AHEvent AHEvent

function AHEvent:new(type)
    -- Class Instantiation --
    local o = LuaEvent:new(type);
    --- @cast o AHEvent
    setmetatable(o, self);
    self.__index = self;

    -- Class Construction --
    return o;
end

return AHEvent;
