--- @meta _

--- @class AHBody: AHBodyPart
--- @field __index AHBody
--- 
local AHBody = {};

function AHBody:update() end

--- @param data AHBodyModData
function AHBody:audit(data) end

--- @param data AHBodyModData
function AHBody:load(data) end

--- @return AHBodyModData
function AHBody:save() end

--- @class AHBodyModData
local AHBodyModData = {};
