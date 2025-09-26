--- @meta _

--- @class AHLeg: AHBodyPart
--- @field __index AHLeg
--- 
local AHLeg = {};

--- @return AHLeg
function AHLeg:new() end

--- @param data AHLegModData
function AHLeg:audit(data) end

--- @param data AHLegModData
function AHLeg:load(data) end

--- @return AHLegModData
function AHLeg:save() end

--- @class AHLegModData
local AHLegModData = {};
