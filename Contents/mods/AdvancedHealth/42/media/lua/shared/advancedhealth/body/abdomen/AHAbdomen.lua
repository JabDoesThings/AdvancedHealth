local assert = require 'advancedhealth/util/assert';

local AHAbdomen = ISBaseObject:derive('AHAbdomen');
--- @cast AHAbdomen AHAbdomen

function AHAbdomen:new()
    local o = {};
    setmetatable(o, self);
    self.__index = self;
    return o;
end

function AHAbdomen:audit(data)
    -- TODO: Implement.
end

function AHAbdomen:load(data)
    self:audit(data);
    -- TODO: Implement.
end

function AHAbdomen:save()
    return {
        -- TODO: Implement.
    };
end

return AHAbdomen;
