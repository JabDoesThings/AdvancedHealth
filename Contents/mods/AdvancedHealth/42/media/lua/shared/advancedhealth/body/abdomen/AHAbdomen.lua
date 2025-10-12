local assert = require 'asledgehammer/assert';
local AHBodyPart = require 'advancedhealth/body/AHBodyPart';

local AHAbdomen = AHBodyPart:derive('AHAbdomen');
--- @cast AHAbdomen AHAbdomen

function AHAbdomen:new(body)
    
    -- Class Stuff --
    local o = AHBodyPart:new(body, 'Abdomen');
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
