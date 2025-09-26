--- @meta

--- @author JabDoesThings, asledgehammer 2025

--- @alias AuditType 'nil' | 'number' | 'string' | 'boolean' | 'table' | 'function' | 'thread' | 'userdata'

--- @class AssertAPI
local API = {};

--- @param path string The name of (or path to) the variable.
--- @param value any The value of the variable.
--- @param depth integer|nil Tracks the depth of calls to point towards the base assert check call.
function API.assertNonNil(path, value, depth) end

--- @param path string The name of (or path to) the variable.
--- @param value any The value of the variable.
--- @param depth integer|nil Tracks the depth of calls to point towards the base assert check call.
function API.assertNil(path, value, depth) end

--- @param path string The name of (or path to) the variable.
--- @param value any The value of the variable.
--- @param type AuditType
--- @param depth integer|nil Tracks the depth of calls to point towards the base assert check call.
function API.assertType(path, value, type, depth) end

--- @param path string The name of (or path to) the variable.
--- @param value string The value of the variable.
--- @param depth integer|nil Tracks the depth of calls to point towards the base assert check call.
function API.assertString(path, value, depth) end

--- @param path string The name of (or path to) the variable.
--- @param value string The value of the variable.
--- @param expectedValue string
--- @param depth integer|nil Tracks the depth of calls to point towards the base assert check call.
function API.assertStringExact(path, value, expectedValue, depth) end

--- @param path string The name of (or path to) the variable.
--- @param value string The value of the variable.
--- @param depth integer|nil Tracks the depth of calls to point towards the base assert check call.
function API.assertNonEmptyString(path, value, depth) end

--- @param path string The name of (or path to) the variable.
--- @param value number THe value of the variable.
--- @param depth integer|nil Tracks the depth of calls to point towards the base assert check call.
function API.assertNumber(path, value, depth) end

--- @param path string The name of (or path to) the variable.
--- @param value number The value of the variable.
--- @param expectedValue number
--- @param depth integer|nil Tracks the depth of calls to point towards the base assert check call.
function API.assertNumberExact(path, value, expectedValue, depth) end

--- @param path string The name of (or path to) the variable.
--- @param value number The value of the variable.
--- @param depth integer|nil Tracks the depth of calls to point towards the base assert check call.
function API.assertUnsignedNumber(path, value, depth) end

--- @param path string The name of (or path to) the variable.
--- @param value number The value of the variable.
--- @param depth integer|nil Tracks the depth of calls to point towards the base assert check call.
function API.assertPositiveNumber(path, value, depth) end

--- @param path string The name of (or path to) the variable.
--- @param value number The value of the variable.
--- @param depth integer|nil Tracks the depth of calls to point towards the base assert check call.
function API.assertNegativeNumber(path, value, depth) end

--- @param path string The name of (or path to) the variable.
--- @param value number The value of the variable.
--- @param depth integer|nil Tracks the depth of calls to point towards the base assert check call.
function API.assertNumberRange(path, value, min, max, depth) end

--- @param path string The name of (or path to) the variable.
--- @param value string The value of the variable.
--- @param values string[] All enum values.
--- @param depth integer|nil Tracks the depth of calls to point towards the base assert check call.
function API.assertEnum(path, value, values, depth) end

--- @param path string The name of (or path to) the variable.
--- @param value string | nil The value of the variable.
--- @param values string[] All enum values.
--- @param depth integer|nil Tracks the depth of calls to point towards the base assert check call.
function API.assertEnumOrNil(path, value, values, depth) end

--- @param path string The name of (or path to) the variable.
--- @param value table The value of the variable.
--- @param depth integer|nil Tracks the depth of calls to point towards the base assert check call.
function API.assertTable(path, value, depth) end

--- @param path string The name of (or path to) the variable.
--- @param value any[] The value of the variable.
--- @param depth integer|nil Tracks the depth of calls to point towards the base assert check call.
function API.assertArray(path, value, depth) end

--- @param path string The name of (or path to) the variable.
--- @param value any[] The value of the variable.
--- @param depth integer|nil Tracks the depth of calls to point towards the base assert check call.
function API.assertNonEmptyArray(path, value, depth) end

--- Asserts that both the array AND each entry are not empty.
--- 
--- @param path string The name of (or path to) the variable.
--- @param value string[] The value of the variable.
--- @param depth integer|nil Tracks the depth of calls to point towards the base assert check call.
function API.assertNonEmptyStringArray(path, value, depth) end
