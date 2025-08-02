local assert = require 'advancedhealth/util/assert';

local AHFoot = ISBaseObject:derive('AHFoot');
--- @cast AHFoot AHFoot

function AHFoot:new()
    local o = {};
    setmetatable(o, self);
    self.__index = self;
    return o;
end

function AHFoot:audit(data)
    -- TODO: Implement.
end

function AHFoot:load(data)
    self:audit(data);
    -- TODO: Implement.
end

function AHFoot:save()
    return {
        -- TODO: Implement.
    };
end

return AHFoot;
