--- @meta _

--- [[
--- @author JabDoesThings, asledgehammer 2025
--- ]]

--- @class Enum: ISBaseObject Enum is a string-based array-managed value collection with java-like enumerative resources.
--- 
--- @field __index Enum
--- 
--- @field values string[]
--- @field ordinal_map integer[]
local Enum = {};

--- Converts a ordinal enum value representation to its string enum value.
--- 
--- @param ordinalValue integer The integer ID of the enum value.
--- 
--- @return string stringValue
function Enum.fromOrdinalValue(ordinalValue) end

--- Converts a string enum value representation to its ordinal enum value.
--- 
--- @param stringValue string The string ID of the enum value.
--- 
--- @return integer ordinalValue
function Enum.toOrdinalValue(stringValue) end

--- @param stringValue string
--- 
--- @return boolean result True if the `stringValue` is an enum value.
function Enum.isValue(stringValue) end

--- @param ordinalValue integer
--- 
--- @return boolean result True if the `ordinalValue` is an enum value.
function Enum.isOrdinalValue(ordinalValue) end

--- Sets the Enum read-only.
--- 
--- @return Enum enum
function Enum.finalize() end
