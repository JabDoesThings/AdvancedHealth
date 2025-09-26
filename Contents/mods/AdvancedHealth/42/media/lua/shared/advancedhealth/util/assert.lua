--- @author JabDoesThings, asledgehammer 2025

local API = {};

--- @cast API AssertAPI

--- @param t any[]
--- 
--- @return boolean
local function isArray(t)
    local i = 0;
    for _ in pairs(t) do
        i = i + 1;
        if t[i] == nil then return false end
    end
    return true;
end

--- @param array string[]
--- @param pretty boolean
---
--- @return string
local function enumsToString(array, pretty)
    if #array == 0 then return '[]' end
    local s = '';
    if pretty then
        for i = 1, #array do
            if s == '' then
                s = array[i];
            else
                s = s .. ',\n\t' .. array[i];
            end
        end
        return string.format('[\n\t%s\n]', s);
    else
        for i = 1, #array do
            if s == '' then
                s = array[i];
            else
                s = s .. ', ' .. array[i];
            end
        end
        return string.format('[%s]', s);
    end
end

function API.assertNil(path, value, depth)
    depth = depth or 2;
    if value ~= nil then
        error(string.format('The value \'%s\' is NOT nil.', path), 2);
    end
end

function API.assertNonNil(path, value, depth)
    depth = depth or 2;
    if value == nil then
        error(string.format('The value \'%s\' is nil.', path), 2);
    end
end

function API.assertType(path, value, t, depth)
    depth = depth or 2;
    API.assertNonNil(path, value);
    local tvalue = type(value);
    if tvalue ~= t then
        error(
            string.format('The value \'%s\' is NOT a %s. { type = %s, value = %s }',
                path, t,
                tvalue, tostring(value)
            ),
            2
        );
    end
end

function API.assertString(path, value, depth)
    depth = depth or 2;
    API.assertNonNil(path, value);
    API.assertType(path, value, 'string');
end

function API.assertStringExact(path, value, expectedValue, depth)
    depth = depth or 2;
    API.assertString(path, value);
    if value ~= expectedValue then
        error(
            string.format('The value \'%s\' is NOT the value \'%s\'! { type = %s, value = %s }',
                path, expectedValue,
                type(value), tostring(value)
            ),
            depth
        );
    end
end

function API.assertNonEmptyString(path, value, depth)
    depth = depth or 2;
    API.assertString(path, value, depth + 1);
    if value == '' then
        error(string.format('The value \'%s\' is an empty string.'), 2);
    end
end

function API.assertNumber(path, value, depth)
    depth = depth or 2;
    API.assertNonNil(path, value, depth + 1);
    API.assertType(path, value, 'number', depth + 1);
end

function API.assertNumberExact(path, value, expectedValue, depth)
    depth = depth or 2;
    API.assertNumber(path, value, depth + 1);
    if value ~= expectedValue then
        error(
            string.format('The value \'%s\' is NOT the value %s! { type = %s, value = %s }',
                path, expectedValue,
                type(value), tostring(value)
            ),
            2
        );
    end
end

function API.assertUnsignedNumber(path, value, depth)
    depth = depth or 2;
    API.assertNumber(path, value, depth + 1);
    if value < 0 then
        error(
            string.format('The value \'%s\' is NOT an unsigned value. { value = %s }',
                path,
                tostring(value)
            ),
            depth
        );
    end
end

function API.assertPositiveNumber(path, value, depth)
    depth = depth or 2;
    API.assertNumber(path, value, depth + 1);
    if value < 1 then
        error(
            string.format('The value \'%s\' is NOT a positive value. { value = %s }',
                path,
                tostring(value)
            ),
            depth
        );
    end
end

function API.assertNegativeNumber(path, value, depth)
    depth = depth or 2;
    API.assertNumber(path, value, depth + 1);
    if value > -1 then
        error(
            string.format('The value \'%s\' is NOT a negative value. { value = %s }',
                path,
                tostring(value)
            ),
            depth
        );
    end
end

function API.assertNumberRange(path, value, min, max, depth)
    depth = depth or 2;
    API.assertNumber('min', min, depth + 1);
    API.assertNumber('max', max, depth + 1);
    API.assertNumber(path, value, depth + 1);
    if value < min or value > max then
        error(
            string.format('The value \'%s\' is outside the value range. { min = %.4f, max = %.4f, value = %.4f }',
                path,
                tostring(min),
                tostring(max),
                tostring(value)
            ),
            depth
        );
    end
end

function API.assertTable(path, value, depth)
    depth = depth or 2;
    API.assertNonNil(path, value, depth + 1);
    API.assertType(path, value, 'table', depth + 1);
end

function API.assertArray(path, value, depth)
    depth = depth or 2;
    API.assertNonNil(path, value, depth + 1);

    if not isArray(value) then
        error(
            string.format(
                'The value \'%s\' is NOT an array. { type = %s, value = %s }',
                path,
                type(value),
                tostring(value)
            ),
            depth
        );
    end
end

function API.assertNonEmptyArray(path, value, depth)
    depth = depth or 2;
    API.assertArray(path, value, depth + 1);
    if #value == 0 then
        error(string.format('The value \'%s\' is an empty array.', path), 2);
    end
end

function API.assertNonEmptyStringArray(path, value, depth)
    depth = depth or 2;
    API.assertNonEmptyArray(path, value, depth + 1);
    for i = 1, #value do
        API.assertNonEmptyString(string.format('%s[%i]', path, i), value[i], depth + 1);
    end
end

function API.assertEnum(path, value, values, depth)
    depth = depth or 2;

    --- Check if is Enum.
    if type(values) == 'table' and values.values ~= nil then
        --- @cast values Enum
        values = values.values;
    end

    --- @cast values string[]

    API.assertNonEmptyString(path, value, depth + 1);
    API.assertNonEmptyStringArray('types', values, depth + 1);

    for i = 1, #values do
        if value == values[i] then return end
    end

    local sTypes = enumsToString(values, false);
    error(
        string.format(
            'The value \'%s\' is NOT one of the following enums: %s { value = %s }'
            ,
            path,
            sTypes,
            tostring(value)
        ),
        depth
    );
end

function API.assertEnumOrNil(path, value, values, depth)
    depth = depth or 2;
    if value == nil then return end
    API.assertEnum(path, value, values, depth + 1);
end

return API;
