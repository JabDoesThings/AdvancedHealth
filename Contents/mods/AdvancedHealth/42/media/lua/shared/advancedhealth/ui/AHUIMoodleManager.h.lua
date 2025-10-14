--- @meta _

--- @class AHUIMoodleManager: ISBaseObject
--- @field __index AHUIMoodleManager
--- 
--- @field name string
--- @field javaObject UIElement
--- @field moodles table<string, AHUIMoodle> Moodles registered by their name.
--- @field moodlesIndexed AHUIMoodle[] Compiled moodles to render.
--- @field nextIndex integer (Static) Positive incremental value to track where to place moodles.
--- @field __dirty boolean If true, the moodlesIndexed array needs to be rebuilt.
local AHUIMoodleManager = {};

--- @return AHUIMoodleManager newInstance
function AHUIMoodleManager:new() end

--- @param name string
--- 
--- @return AHUIMoodle moodle
function AHUIMoodleManager:createMoodle(name) end

--- Rebuilds the moodle render array.
function AHUIMoodleManager:rebuild() end

--- @return boolean isDirty True if the manager is dirty and needs to rebuild the render array.
function AHUIMoodleManager:isDirty() end

--- Sets the manager in the dirty-state, rebuilding the render array.
function AHUIMoodleManager:setDirty() end

-- MARK: UIEelement

function AHUIMoodleManager:prerender() end

function AHUIMoodleManager:render() end
