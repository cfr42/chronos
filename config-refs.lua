-- $Id: config-refs.lua 10875 2025-02-27 04:04:33Z cfrees $
-- Build configuration for chronos
testfiledir = "testfiles-refs"
checkengines = { "pdftex", "xetex" , "luatex" }
checkruns = 2
-- l3build doc listing 5
function runtest_tasks (name,run)
  if run == 1 then
    return biberexe .. " " .. name
  else
    return " "
  end
end
-- vim: ts=2:sw=2:et:
