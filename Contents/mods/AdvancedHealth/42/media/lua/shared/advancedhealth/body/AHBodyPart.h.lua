--- @meta _

--- @class AHBodyPart: ISBaseObject
--- @field __index AHBodyPart
--- 
--- @field parent AHBodyPart | nil If the body-part is a part of another body-part, this points to it.
--- @field name string The formal name of the body-part.
--- @field parts table<string, AHBodyPart> Any sub body-parts.
local AHBodyPart = {};

--- @param parent AHBodyPart | nil If the body-part is a part of another body-part, this points to it.
--- @param name string The formal name of the body-part.
--- 
--- @return AHBodyPart bodyPartInstance
function AHBodyPart:new(parent, name) end

function AHBodyPart:update() end

--- Loops through and updates any and all sub-parts.
function AHBodyPart:updateChildren() end

--- @return string fullName The full-body part name using comma-delineation.
function AHBodyPart:getName() end

--- @param data AHBodyPartModData
function AHBodyPart:audit(data) end

--- @param data AHBodyPartModData
function AHBodyPart:load(data) end

--- @return AHBodyPartModData
function AHBodyPart:save() end

--- @class AHBodyPartModData
local AHBodyPartModData = {};
