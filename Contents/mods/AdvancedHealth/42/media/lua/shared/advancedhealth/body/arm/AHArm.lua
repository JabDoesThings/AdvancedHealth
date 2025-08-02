local assert = require 'advancedhealth/util/assert';

local AHArm = ISBaseObject:derive('AHArm');
--- @cast AHArm AHArm

function AHArm:new()
    local o = {};
    setmetatable(o, self);
    self.__index = self;
    return o;
end

function AHArm:audit(data)
    -- TODO: Implement.
end

function AHArm:load(data)
    self:audit(data);
    -- TODO: Implement.
end

function AHArm:save()
    return {
        -- TODO: Implement.
    };
end

return AHArm;
