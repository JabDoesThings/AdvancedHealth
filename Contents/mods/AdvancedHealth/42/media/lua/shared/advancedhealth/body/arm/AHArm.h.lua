--- @meta _

--- @class AHArm: AHBodyPart
--- @field __index AHArm
--- 
--- @field side AHBodySideValue
local AHArm = {};

--- @param body AHBody
--- @param side AHBodySideValue
--- 
--- @return AHArm
function AHArm:new(body, side) end

--- @param data AHArmModData
function AHArm:audit(data) end

--- @param data AHArmModData
function AHArm:load(data) end

--- @return AHArmModData
function AHArm:save() end

--- @class AHArmModData
local AHArmModData = {};
