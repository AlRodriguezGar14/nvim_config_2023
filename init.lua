require('base')
require('highlights')
require('maps')
require('plugins')
require('Comment').setup()
-- Language servers

-- Copy to the clipboard
local has = function(x)
    return vim.fn.has(c) == 1
end

local is_mac = "macunix"
local is_win = "win32"

if is_mac then 
    require('macos')
end
if is_win then
    require('windows')
end



