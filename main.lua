-- Copyright (c) 2013 Alexander Harkness

-- Permission is hereby granted, free of charge, to any person obtaining a
-- copy of this software and associated documentation files (the
-- "Software"), to deal in the Software without restriction, including
-- without limitation the rights to use, copy, modify, merge, publish,
-- distribute, sublicense, and/or sell copies of the Software, and to
-- permit persons to whom the Software is furnished to do so, subject to
-- the following conditions:

-- The above copyright notice and this permission notice shall be included
-- in all copies or substantial portions of the Software.

-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
-- OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
-- MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
-- IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
-- CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
-- TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
-- SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

-- Globals

PLUGIN = {}
LOGPREFIX = ""

-- Code Start

function Initialize( Plugin )

	PLUGIN = Plugin

	Plugin:SetName("NamedBlocks")
	Plugin:SetVersion(0)

	LOGPREFIX = "["..Plugin:GetName().."] "

	LOG(LOGPREFIX.."Plugin enabled.")

end

function OnDisable()

	LOG(LOGPREFIX.."Plugin Disabled")

end

function GetBlockName(id, meta)

	local tempName = BLOCKS[id+1][meta+1]

	if tempName == nil then

			local temp2 = BLOCKS[id+1][1]

			if temp2 == nil then
				return "Unrecognized Block"
			else
				return temp2
			end

	else

		return tempName

	end

end
