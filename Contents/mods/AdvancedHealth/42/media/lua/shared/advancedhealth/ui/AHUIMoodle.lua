local AHUIMoodle = ISBaseObject:derive('AHUIMoodle');
--- @cast AHUIMoodle AHUIMoodle

function AHUIMoodle:new(id, name, index)
    -- Class Instantiation --
    local o = ISBaseObject:new();
    --- @cast o AHUIMoodle
    setmetatable(o, self);
    self.__index = self;

    -- Class Construction --
    o.id = id;
    o.name = name;
    o.index = index;

    return o;
end

function AHUIMoodle:update()

end

function AHUIMoodle:prerender()

end

function AHUIMoodle:render()

end

return AHUIMoodle;
