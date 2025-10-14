local enum = require 'asledgehammer/enum';

local AHUIAnchor = enum('AHUIAnchor', {
    'top-left',
    'top',
    'top-right',
    'right',
    'bottom-right',
    'bottom',
    'bottom-left',
    'left',
    'center'
});

return AHUIAnchor;
