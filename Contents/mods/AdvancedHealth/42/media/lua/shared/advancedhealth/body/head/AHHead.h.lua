--- @meta _

--- @class AHHead: AHBodyPart
--- @field __index AHHead
--- 
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
