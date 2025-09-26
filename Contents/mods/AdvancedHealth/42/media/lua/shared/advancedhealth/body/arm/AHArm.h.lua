--- @meta

--- @class AHArm: AHBodyPart
---
--- @field __index table
local AHArm = {};

--- @return AHArm
function AHArm:new() end

--- @param data AHArmModData
function AHArm:audit(data) end

--- @param data AHArmModData
function AHArm:load(data) end

--- @return AHArmModData
function AHArm:save() end

--- @class AHArmModData
local AHArmModData = {};
