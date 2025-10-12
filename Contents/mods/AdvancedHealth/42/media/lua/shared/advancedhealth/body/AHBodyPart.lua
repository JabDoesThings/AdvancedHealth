local assert = require 'asledgehammer/assert';

local AHBodyPart = ISBaseObject:derive('AHBodyPart');
--- @cast AHBodyPart AHBodyPart

function AHBodyPart:new(parent, name)
    local o = {};
    setmetatable(o, self);
    self.__index = self;

    --- @cast o AHBodyPart

    self.parent = parent;
    self.name = name;
    self.parts = {};

    return o;
end

function AHBodyPart:update()

    -- Make sure to update any sub-parts. In sub-classes overriding self:update(), this method should be called or the
    -- overloadded method should call this.
    self:updateChildren();

end

function AHBodyPart:updateChildren()
    if not self.parts or #self.parts == 0 then return end

    local part;
    for i=1, #self.parts do
        part = self.parts[i];

        -- Protected-call the part to ensure that if a part fails to update, other parts will update.
        local success, msg = pcall(function() part:update() end);
        if not success then
            print(string.format('Failed to update body-part: %s (error: %s)', part:getName(), tostring(msg)));
        end
    end

end

function AHBodyPart:getName()
    if not self.parent then return self.name end

    return string.format('%s.%s', self.parent:getName(), self.name);
end

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
