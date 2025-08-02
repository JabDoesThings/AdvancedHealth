local AHPlayerWrapper = ISBaseObject:derive('AHPlayerWrapper');

--- @cast AHPlayerWrapper AHPlayerWrapper

function AHPlayerWrapper:new(player)
    local o = {};
    setmetatable(o, self);
    self.__index = self;
    return o;
end

return AHPlayerWrapper;
