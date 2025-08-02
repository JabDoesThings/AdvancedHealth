--- @meta

--- @class AHAbdomen: ISBaseObject
---
--- @field __index table
local AHAbdomen = {};

--- @return AHAbdomen
function AHAbdomen:new() end

--- @param data AHAbdomenModData
function AHAbdomen:audit(data) end

--- @param data AHAbdomenModData
function AHAbdomen:load(data) end

--- @return AHAbdomenModData
function AHAbdomen:save() end

--- @class AHAbdomenModData
local AHAbdomenModData = {};
