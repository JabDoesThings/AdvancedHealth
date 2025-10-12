local enum = require 'asledgehammer/enum';

local AHBodySide = enum('AHBodySide', { 'LEFT', 'RIGHT' }).finalize();
--- @cast AHBodySide AHBodySide

return AHBodySide;
