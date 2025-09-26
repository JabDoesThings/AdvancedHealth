local assert = require 'advancedhealth/util/assert';
local AHBodyPart = require 'advancedhealth/body/AHBodyPart';

local AHBody = AHBodyPart:derive('AHBody');
--- @cast AHBody AHBody

function AHBody:new()
    local o = {};
    setmetatable(o, self);
    self.__index = self;
    return o;
end

function AHBody:audit(data)
    -- TODO: Implement.
end

function AHBody:update()

end

function AHBody:load(data)
    self:audit(data);
    -- TODO: Implement.
end

function AHBody:save()
    return {
        -- TODO: Implement.
    };
end

return AHBody;
