--- @meta

--- @class AHChest: AHBodyPart
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
