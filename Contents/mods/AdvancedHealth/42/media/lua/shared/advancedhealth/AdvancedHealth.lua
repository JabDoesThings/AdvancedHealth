local assert = require 'advancedhealth/util/assert';
local AHPlayerWrapper = require 'advancedhealth/AHPlayerWrapper';

--- @param name string
local function getOnlinePlayer(name)
    assert.assertNonEmptyString('name', name);

    local onlinePlayers = getOnlinePlayers();
    for i = 0, onlinePlayers:size() - 1 do
        --- @type IsoPlayer
        local next = onlinePlayers:get(i);
        if next:getUsername() == name then
            return next;
        end
    end

    return nil;
end

local API = {};
--- @cast API AdvancedHealth

local playerWrapper;

--- @type table<string, AHPlayerWrapper>
local playerWrappers = {};

function API.init()
    local player = getPlayer();
    playerWrapper = AHPlayerWrapper:new(player);
end

Events.OnGameStart.Add(function()
    API.init();
end);

--- @param name string?
function API.wrapPlayer(name)
    if not name then return playerWrapper end

    assert.assertNonEmptyString('name', name);

    local wrapper = playerWrappers[name];
    if not wrapper then
        -- Ensure that the player is online.
        local player = getOnlinePlayer(name);
        if not player then
            error(string.format('Player not found with username: %s', name), 2);
        end
        wrapper = AHPlayerWrapper:new(player);
    end

    return wrapper;
end

return API;
