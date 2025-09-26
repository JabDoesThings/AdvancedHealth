local assert = require 'advancedhealth/util/assert';
local AHBodyPart = require 'advancedhealth/body/AHBodyPart';
local AHBodySide = require 'advancedhealth/body/AHBodySide';

local AHArm = AHBodyPart:derive('AHArm');
--- @cast AHArm AHArm

function AHArm:new(body, side)

    assert.assertEnum('side', side, AHBodySide);

    local name = '%s Arm';
    if side == 'left' then
        name = string.format(name, 'Left');
    else
        name = string.format(name, 'Right');
    end

    -- Class Stuff --
    local o = AHBodyPart:new(body, 'Arm');
    setmetatable(o, self);
    self.__index = self;

    self.side = side;
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
