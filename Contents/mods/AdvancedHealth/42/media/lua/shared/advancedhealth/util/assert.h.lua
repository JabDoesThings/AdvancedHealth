--- @meta

--- @alias AuditType 'nil' | 'number' | 'string' | 'boolean' | 'table' | 'function' | 'thread' | 'userdata'

--- @class AssertAPI
local API = {};

--- @param path string
--- @param value any
function API.assertNonNil(path, value) end

--- @param path string
--- @param value any
--- @param type AuditType
function API.assertType(path, value, type) end

--- @param path string
--- @param value any
function API.assertString(path, value) end

--- @param path string
--- @param value any
--- @param expectedValue string
function API.assertStringExact(path, value, expectedValue) end

--- @param path string
--- @param value any
function API.assertNonEmptyString(path, value) end

--- @param path string
--- @param value any
function API.assertNumber(path, value) end

--- @param path string
--- @param value any
--- @param expectedValue number
function API.assertNumberExact(path, value, expectedValue) end

--- @param path string
--- @param value any
function API.assertUnsignedNumber(path, value) end

--- @param path string
--- @param value any
function API.assertPositiveNumber(path, value) end

--- @param path string
--- @param value any
function API.assertNegativeNumber(path, value) end

--- @param path string
--- @param value any
function API.assertNumberRange(path, value, min, max) end
