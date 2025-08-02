--- @meta

--- @class AHBody: ISBaseObject
---
--- @field __index table
local AHBody = {};

--- @param data AHBodyModData
function AHBody:audit(data) end

--- @param data AHBodyModData
function AHBody:load(data) end

--- @return AHBodyModData
function AHBody:save() end

--- @class AHBodyModData
local AHBodyModData = {};
