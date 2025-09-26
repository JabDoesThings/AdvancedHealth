local AHPlayerWrapper = ISBaseObject:derive('AHPlayerWrapper');

local AHBody = require 'advancedhealth/body/AHBody';

--- @cast AHPlayerWrapper AHPlayerWrapper

function AHPlayerWrapper:new(player)
    local o = {};
    setmetatable(o, self);
    self.__index = self;

    o.player = player;
    o.name = player:getFullName();
    o.index = player:getIndex();

    --- TODO: Load from player mod-data.

    o.body = AHBody:new(nil, 'Body');

    return o;
end

function AHPlayerWrapper:getName()
    return self.name;
end

return AHPlayerWrapper;
