--- @type AHUIMoodleSettingsModule
local API = {};

function API.default()
    --- @type AHUIMoodleSettings
    local settings = {
        size = 128,
        position = 'bottom-right'
    };

    return settings;
end

return API;
