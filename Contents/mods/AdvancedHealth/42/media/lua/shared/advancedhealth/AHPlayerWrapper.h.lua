--- @meta

--- @class AHPlayerWrapper: ISBaseObject
--- @field __index AHPlayerWrapper
--- 
--- @field player IsoPlayer The Java player object that's wrapped.
--- @field name string The full name of the player.
--- @field index integer The offset index for internal API.
local AHPlayerWrapper = {};

--- @param player IsoPlayer
--- 
--- @return AHPlayerWrapper
function AHPlayerWrapper:new(player) end

--- @return string
function AHPlayerWrapper:getName() end
