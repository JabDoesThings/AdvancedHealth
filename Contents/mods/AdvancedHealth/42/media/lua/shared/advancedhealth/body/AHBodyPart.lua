local assert = require 'advancedhealth/util/assert';

local AHBodyPart = ISBaseObject:derive('AHBodyPart');
--- @cast AHBodyPart AHBodyPart

function AHBodyPart:new()
    local o = {};
    setmetatable(o, self);
    self.__index = self;

    --- @cast o AHBodyPart

    self.parts = {};

    return o;
end

function AHBodyPart:update() end

function AHBodyPart:audit(data)
    -- TODO: Implement.
end

function AHBodyPart:load(data)
    self:audit(data);
    -- TODO: Implement.
end

function AHBodyPart:save()
    return {
        -- TODO: Implement.
    };
end

return AHBodyPart;
