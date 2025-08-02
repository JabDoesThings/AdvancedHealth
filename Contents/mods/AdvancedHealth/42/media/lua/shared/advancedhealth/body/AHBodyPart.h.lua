--- @meta

--- @class AHBodyPart: ISBaseObject
---
--- @field __index table
--- 
--- @field parts table<string, AHBodyPart> Any sub body-parts.
local AHBodyPart = {};

--- @return AHBodyPart
function AHBodyPart:new() end

--- @param data AHBodyPartModData
function AHBodyPart:audit(data) end

--- @param data AHBodyPartModData
function AHBodyPart:load(data) end

--- @return AHBodyPartModData
function AHBodyPart:save() end

--- @class AHBodyPartModData
local AHBodyPartModData = {};
