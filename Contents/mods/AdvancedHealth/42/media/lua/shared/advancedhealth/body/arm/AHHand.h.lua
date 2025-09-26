--- @meta _

--- @class AHHand: AHBodyPart
--- @field __index AHHand
--- 
local AHHand = {};

--- @param data AHHandModData
function AHHand:audit(data) end

--- @param data AHHandModData
function AHHand:load(data) end

--- @return AHHandModData
function AHHand:save() end

--- @class AHHandModData
local AHHandModData = {};
