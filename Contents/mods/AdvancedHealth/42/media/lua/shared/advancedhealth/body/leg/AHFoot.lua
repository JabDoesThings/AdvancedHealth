local assert = require 'advancedhealth/util/assert';
local AHBodyPart = require 'advancedhealth/body/AHBodyPart';

local AHFoot = AHBodyPart:derive('AHFoot');
--- @cast AHFoot AHFoot

function AHFoot:new()
    local o = {};
    setmetatable(o, self);
    self.__index = self;
    return o;
end

function AHBodyPart:update() end

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
