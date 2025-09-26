local enum = require 'advancedhealth/util/enum';

local AHBodySide = enum('AHBodySide', { 'LEFT', 'RIGHT' }).finalize();
--- @cast AHBodySide AHBodySide

return AHBodySide;
