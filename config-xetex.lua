-- $Id: config-xetex.lua 11071 2025-07-16 16:15:43Z cfrees $
--------------------------------------------------------------------------------
checkengines = { "xetex" }
-- on GitHub, XeTeX cannot find FontAwesome.otf installed in the TEXMF tree even 
-- with filename rather than font name
local uname = os.uname()
if not string.match(uname.release, "arch") then
  excludetests = { "chronos-t30", "chronos-scratch" }
else
  excludetests = { "chronos-scratch" }
end
--------------------------------------------------------------------------------
-- vim: ts=2:sw=2:et:
