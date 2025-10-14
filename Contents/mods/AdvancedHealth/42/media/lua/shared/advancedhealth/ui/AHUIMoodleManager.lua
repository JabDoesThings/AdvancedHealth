local AHUIMoodle = require 'advancedhealth/ui/AHUIMoodle';

local AHUIMoodleManager = ISBaseObject:derive('AHUIMoodleManager');
--- @cast AHUIMoodleManager AHUIMoodleManager

function AHUIMoodleManager:new()
    -- Class Instantiation --
    local o = ISBaseObject:new();
    --- @cast o AHUIMoodleManager
    setmetatable(o, self);
    self.__index = self;

    -- Class Construction --
    o.nextIndex = 1;
    o.__dirty = true;

    -- Instantiate and add UI element.
    o.javaObject = UIElement.new(o);
    UIManager.AddUI(o.javaObject);

    -- To store and call our moodles.
    o.moodles = {};

    return o;
end

function AHUIMoodleManager:createMoodle(id, name)
    -- Grab the next ID.
    local index = self.nextIndex;
    self.nextIndex = self.nextIndex + 1;

    -- Create the moodle.
    local moodle = AHUIMoodle:new(id, name, index);
    self.moodles[name] = moodle;

    -- Rebuild indexed array.
    self:setDirty();
end

function AHUIMoodleManager:rebuild()
    self.moodlesIndexed = {};
    for _, v in pairs(self.moodles) do
        table.insert(self.moodlesIndexed, v.index, v);
    end
end

function AHUIMoodleManager:prerender()
    if self.__dirty then
        self:rebuild();
        self.__dirty = false;
    end
    for i=1, self.nextIndex - 1 do
        self.moodlesIndexed[i]:update();
    end
end

function AHUIMoodleManager:render()
    for i=1, self.nextIndex - 1 do
        self.moodlesIndexed[i]:render();
    end
end

function AHUIMoodleManager:isDirty()
    return self.__dirty or false;
end

function AHUIMoodleManager:setDirty()
    self.__dirty = true;
end

return AHUIMoodleManager;
