--- @meta

--- @class AHFoot: ISBaseObject
---
--- @field __index table
local AHFoot = {};

--- @param data AHFootModData
function AHFoot:audit(data) end

--- @param data AHFootModData
function AHFoot:load(data) end

--- @return AHFootModData
function AHFoot:save() end

--- @class AHFootModData
local AHFootModData = {};
