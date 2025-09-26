local AHPlayerWrapper = ISBaseObject:derive('AHPlayerWrapper');

--- @cast AHPlayerWrapper AHPlayerWrapper

function AHPlayerWrapper:new(player)
    local o = {};
    setmetatable(o, self);
    self.__index = self;

    o.player = player;
    o.name = player:getFullName();
    o.index = player:getIndex();

    return o;
end

function AHPlayerWrapper:getName()
    return self.name;
end

return AHPlayerWrapper;
