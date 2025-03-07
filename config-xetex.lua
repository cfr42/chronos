-- $Id: config-xetex.lua 10875 2025-02-27 04:04:33Z cfrees $
--------------------------------------------------------------------------------
checkengines = { "xetex" }
-- on GitHub, XeTeX cannot find FontAwesome.otf installed in the TEXMF tree even 
-- with filename rather than font name
local uname = os.uname()
if not string.match(uname.release, "arch") then
  excludetests = { "chronos-t30" }
end
--------------------------------------------------------------------------------
-- vim: ts=2:sw=2:et:
