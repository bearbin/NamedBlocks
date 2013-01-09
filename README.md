This plugin is a developer tool to provide block names for MCServer plugins.


How to use:
-----------

First, get a handle on NamedBlocks

PluginManager = cRoot:Get():GetPluginManager()
local NamedBlocks = PluginManager:GetPlugin("NamedBlocks")

Then call the function:

local string, return = NamedBlocks:Call("GetBlockName", block, metaValue)

block and metavalue are the block id and meta id.

string is the name of the block.

return is 0 on success, 1 on non exact match and 2 on failure.
