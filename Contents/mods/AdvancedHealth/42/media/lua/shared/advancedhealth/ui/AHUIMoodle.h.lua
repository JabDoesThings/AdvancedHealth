--- @meta _

--- @class AHUIMoodle: ISBaseObject
--- @field __index AHUIMoodle
--- 
--- @field id string The internal unique ID of the moodle.
--- @field name string The formal name of the moodle.
--- @field index integer The index position in the manager's render array.
local AHUIMoodle = {};

--- @param id string
--- @param name string
--- @param index integer (Zero-Positive)
--- 
--- @return AHUIMoodle newInstance
function AHUIMoodle:new(id, name, index) end

function AHUIMoodle:update() end

function AHUIMoodle:prerender() end

function AHUIMoodle:render() end
