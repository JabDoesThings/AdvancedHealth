local assert = require 'advancedhealth/util/assert';

local AHHand = ISBaseObject:derive('AHHand');
--- @cast AHHand AHHand

function AHHand:new()
    local o = {};
    setmetatable(o, self);
    self.__index = self;
    return o;
end

function AHHand:audit(data)
    -- TODO: Implement.
end

function AHHand:load(data)
    self:audit(data);
    -- TODO: Implement.
end

function AHHand:save()
    return {
        -- TODO: Implement.
    };
end

return AHHand;
