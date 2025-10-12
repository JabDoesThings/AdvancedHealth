local assert = require 'asledgehammer/assert';

local AHHead = ISBaseObject:derive('AHHead');
--- @cast AHHead AHHead

function AHHead:new()
    local o = {};
    setmetatable(o, self);
    self.__index = self;
    return o;
end

function AHHead:audit(data)
    -- TODO: Implement.
end

function AHHead:load(data)
    self:audit(data);
    -- TODO: Implement.
end

function AHHead:save()
    return {
        -- TODO: Implement.
    };
end

return AHHead;
