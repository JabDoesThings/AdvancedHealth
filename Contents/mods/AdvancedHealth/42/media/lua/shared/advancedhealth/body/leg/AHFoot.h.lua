--- @meta _

--- @class AHFoot: AHBodyPart
--- @field __index AHFoot
--- 
local AHFoot = {};

--- @param data AHFootModData
function AHFoot:audit(data) end

function AHFoot:update() end

--- @param data AHFootModData
function AHFoot:load(data) end

--- @return AHFootModData
function AHFoot:save() end

--- @class AHFootModData
local AHFootModData = {};
