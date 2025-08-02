--- @meta

--- @class AHHead: ISBaseObject
---
--- @field __index table
local AHHead = {};

--- @return AHHead
function AHHead:new() end

--- @param data AHHeadModData
function AHHead:audit(data) end

--- @param data AHHeadModData
function AHHead:load(data) end

--- @return AHHeadModData
function AHHead:save() end

--- @class AHHeadModData
local AHHeadModData = {};
