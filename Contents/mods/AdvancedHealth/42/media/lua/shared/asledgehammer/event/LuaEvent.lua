local LuaEvent = ISBaseObject:derive("LuaEvent");
--- @cast LuaEvent LuaEvent

function LuaEvent:new(name)
    -- Class Setup --
    local o = ISBaseObject:new();
    --- @cast o LuaEvent
    setmetatable(o, self);
    self.__index = self;

    -- Class Construction --
    o.name = name;

    return o;
end

return LuaEvent;
