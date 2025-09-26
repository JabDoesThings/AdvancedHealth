local ISBaseObject = require 'ISBaseObject';

local AHBodyPartCondition = ISBaseObject:derive('AHBodyPartCondition');
--- @cast AHBodyPartCondition AHBodyPartCondition

function AHBodyPartCondition:new(part)

    -- Class stuff --
    local o = ISBaseObject:new();
    setmetatable(o, self);
    self.__index = self;

    o.part = part;

    return o;
end

return AHBodyPartCondition;
