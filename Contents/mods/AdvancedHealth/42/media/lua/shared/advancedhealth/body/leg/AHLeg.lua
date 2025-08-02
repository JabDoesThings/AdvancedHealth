local assert = require 'advancedhealth/util/assert';

local AHLeg = ISBaseObject:derive('AHLeg');
--- @cast AHLeg AHLeg

function AHLeg:new()
    local o = {};
    setmetatable(o, self);
    self.__index = self;
    return o;
end

function AHLeg:audit(data)
    -- TODO: Implement.
end

function AHLeg:load(data)
    self:audit(data);
    -- TODO: Implement.
end

function AHLeg:save()
    return {
        -- TODO: Implement.
    };
end

return AHLeg;
