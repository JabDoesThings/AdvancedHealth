--- @meta _

--- @class AHBodyPartCondition: ISBaseObject AHBodyCondition handles all body conditions and is the base class for things like diseases, bruises, medical emergencies and syndromes.
--- @field __index AHBodyPartCondition
--- 
--- @field part AHBodyPart The part of the body affected.
local AHBodyPartCondition = {};

--- @param part AHBodyPart The part of the body that has the condition.
function AHBodyPartCondition:new(part) end
