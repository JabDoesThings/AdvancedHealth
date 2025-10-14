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

    o.visible = false;

    return o;
end

function AHUIMoodle:update(graphics, settings)
    -- Update dimensions here --
end

function AHUIMoodle:prerender(graphics, settings)    
    -- Render backgrounds or borders here --
end

function AHUIMoodle:render(graphics, settings)
    -- Render texture content here --
end

return AHUIMoodle;
