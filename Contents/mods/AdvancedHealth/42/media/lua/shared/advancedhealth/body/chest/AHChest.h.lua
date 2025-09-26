--- @meta _

--- @class AHChest: AHBodyPart
--- @field __index AHChest
--- 
local AHChest = {};

--- @return AHChest
function AHChest:new() end

--- @param data AHChestModData
function AHChest:audit(data) end

--- @param data AHChestModData
function AHChest:load(data) end

--- @return AHChestModData
function AHChest:save() end

--- @class AHChestModData
local AHChestModData = {};
