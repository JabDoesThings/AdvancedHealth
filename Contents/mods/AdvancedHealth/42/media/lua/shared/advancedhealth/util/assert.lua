local API = {};

--- @cast API AssertAPI

function API.assertNonNil(path, value)
    if value == nil then
        error(string.format('The value \'%s\' is nil.', path), 2);
    end
end

function API.assertType(path, value, t)
    API.assertNonNil(path, value);
    local tvalue = type(value);
    if tvalue ~= t then
        error(
            string.format('The value \'%s\' is not a %s. { type = %s, value = %s }',
                path, t,
                tvalue, tostring(value)
            ),
            2
        );
    end
end

function API.assertString(path, value)
    API.assertNonNil(path, value);
    API.assertType(path, value, 'string');
end

function API.assertStringExact(path, value, expectedValue)
    API.assertString(path, value);
    if value ~= expectedValue then
        error(
            string.format('The value \'%s\' isn\'t the value \'%s\'! { type = %s, value = %s }',
                path, expectedValue,
                type(value), tostring(value)
            ),
            2
        );
    end
end

function API.assertNonEmptyString(path, value)
    API.assertString(path, value);
    if value == '' then
        error(string.format('The value \'%s\' is an empty string.'), 2);
    end
end

function API.assertNumber(path, value)
    API.assertNonNil(path, value);
    API.assertType(path, value, 'number');
end

function API.assertNumberExact(path, value, expectedValue)
    API.assertNumber(path, value);
    if value ~= expectedValue then
        error(
            string.format('The value \'%s\' isn\'t the value %s! { type = %s, value = %s }',
                path, expectedValue,
                type(value), tostring(value)
            ),
            2
        );
    end
end

function API.assertUnsignedNumber(path, value)
    API.assertNumber(path, value);
    if value < 0 then
        error(
            string.format('The value \'%s\' is not an unsigned value. { value = %s }',
                path,
                tostring(value)
            ),
            2
        );
    end
end

function API.assertPositiveNumber(path, value)
    API.assertNumber(path, value);
    if value < 1 then
        error(
            string.format('The value \'%s\' is not a positive value. { value = %s }',
                path,
                tostring(value)
            ),
            2
        );
    end
end

function API.assertNegativeNumber(path, value)
    API.assertNumber(path, value);
    if value > -1 then
        error(
            string.format('The value \'%s\' is not a negative value. { value = %s }',
                path,
                tostring(value)
            ),
            2
        );
    end
end

function API.assertNumberRange(path, value, min, max)
    API.assertNumber('min', min);
    API.assertNumber('max', max);
    API.assertNumber(path, value);
    if value < min or value > max then
        error(
            string.format('The value \'%s\' is outside the value range. { min = %.4f, max = %.4f, value = %.4f }',
                path,
                tostring(min),
                tostring(max),
                tostring(value)
            ),
            2
        );
    end
end

return API;
