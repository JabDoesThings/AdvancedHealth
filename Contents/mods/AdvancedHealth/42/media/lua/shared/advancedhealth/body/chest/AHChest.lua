local assert = require 'asledgehammer/assert';

local AHChest = ISBaseObject:derive('AHChest');
--- @cast AHChest AHChest

function AHChest:new()
    local o = {};
    setmetatable(o, self);
    self.__index = self;
    return o;
end

function AHChest:audit(data)
    -- TODO: Implement.
end

function AHChest:load(data)
    self:audit(data);
    -- TODO: Implement.
end

function AHChest:save()
    return {
        -- TODO: Implement.
    };
end

return AHChest;
