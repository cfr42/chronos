-- $Id: config-refs.lua 10859 2025-02-25 06:13:12Z cfrees $
-- Build configuration for chronos
testfiledir = "testfiles-refs"
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
