--- [[
--- @author JabDoesThings, asledgehammer 2025
--- ]]

local assert = require 'advancedhealth/util/assert';

-- (Build enum table)

--- @param name string
--- @param values string[]
---
--- @return Enum
return function(name, values)
    assert.assertNonEmptyString('name', name);
    assert.assertNonEmptyStringArray('values', values);

    local enum = ISBaseObject:derive(name);
    --- @cast enum Enum

    enum.values = values;
    enum.ordinal_map = {};
    for i = 1, #enum.values do
        local value = enum.values[i];
        enum[value] = value;
        enum.ordinal[value] = i;
    end

    function enum.fromOrdinalValue(value)
        assert.assertNumberRange('value', value, 1, #enum.values);
        return enum.values[value];
    end

    function enum.toOrdinalValue(stringValue)
        assert.assertEnum('value', stringValue, enum.values);
        return enum.ordinal_map(stringValue);
    end

    function enum.isValue(value)
        assert.assertNonEmptyString('value', value);
        for i = 1, #enum.values do
            if value == enum.values[i] then return true end
        end
        return false;
    end

    function enum.isOrdinalValue(value)
        assert.assertPositiveNumber('value', value);
        return value < #enum.values;
    end

    local readonly = false;

    function enum.finalize()
        readonly = true;
        return enum;
    end

    local meta = getmetatable(enum) or {};
    return setmetatable({}, {
        __index     = function(t, k)
            return rawget(enum, k);
        end,
        __newindex  = function(t, k, v)
            if readonly then
                error(string.format('Attempt to modify Enum %s.', name), 2);
            end
            rawset(t, k, v);
        end,
        __metatable = false,
        __add       = meta.__add,
        __sub       = meta.__sub,
        __mul       = meta.__mul,
        __div       = meta.__div,
        __mod       = meta.__mod,
        __pow       = meta.__pow,
        __eq        = meta.__eq,
        __lt        = meta.__lt,
        __le        = meta.__le,
        __concat    = meta.__concat,
        __call      = meta.__call,
        __tostring  = meta.__tostring
    });
end
