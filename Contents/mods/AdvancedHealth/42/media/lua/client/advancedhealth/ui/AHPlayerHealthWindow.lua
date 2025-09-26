local ISWindow = require 'ISUI/ISWindow';

local AHPlayerHealthMenu = ISWindow:derive('AHPlayerHealthMenu');
--- @cast AHPlayerHealthMenu AHPlayerHealthMenu

function AHPlayerHealthMenu:new(player)
    
    -- Grab the relative screen of the player here and set the window to be on the right side, 2/3rds in.
    local pIndex = player.index;
    local sLeft = getPlayerScreenLeft(pIndex);
    local sTop = getPlayerScreenTop(pIndex);
    local sWidth = getPlayerScreenWidth(pIndex);
    local sHeight = getPlayerScreenHeight(pIndex);

    local sRight = sLeft + sWidth;

    -- The dimensions of the window.
    local wWidth = 640;
    local wHeight = 480;

    -- Project the window
    local waLeft = math.floor((sLeft + ((sWidth / 3.0) * 2.0)) - (wWidth / 2.0));
    local waTop = math.floor((sTop + ((sHeight / 3.0) * 2.0)) - (wHeight / 2.0));

    -- If the window clips the edge of a low-resolution screen, clamp it to the side.
    local waRight = waLeft + wWidth;
    if waRight > sRight then
        waLeft = waLeft - (waRight - sRight);
    end

    local title = string.format('%s\'s Health', player:getName());

    local o = ISWindow:new(title, waLeft, waTop, wWidth, wHeight);
    setmetatable(o, self);
    self.__index = self;

    return o;
end
