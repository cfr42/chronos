-- $Id: build.lua 11096 2025-07-19 13:13:42Z cfrees $
-- Build configuration for chronos
--------------------------------------------------------------------------------
maindir = maindir or "."
sourcedir = sourcedir or maindir
--------------------------------------------------------------------------------
ctanpkg = "chronos"
module = "chronos"
--------------------------------------------------------------------------------
checkconfigs = { "build", "config-mem", "config-refs", "config-xetex", "config-info" }
checkengines = { "pdftex", "luatex" }
checkopts = "-interaction=nonstopmode -cnf-line='TEXMFHOME=.' -cnf-line='TEXMFLOCAL=.' -cnf-line='TEXMFARCH=.'"
excludetests = { "chronos-scratch" }
-- indexstyle = "gind.ist"
manifestfile = "manifest.txt"
-- sourcefiles = {"*.dtx","*.ins","chronos.tex"}
sourcefiles = {"*.dtx","*.ins"}
tagfiles = { "*.dtx", "README.md", "build.lua", "*.sty", "chronos.tex", "manifest.txt" }
typesetfiles = {"*-doc.tex", "*-imp.tex"}
typesetopts = "-interaction=nonstopmode -cnf-line='TEXMFHOME=.' -cnf-line='TEXMFLOCAL=.' -cnf-line='TEXMFARCH=.'"
typesetruns = 5 -- 4
--------------------------------------------------------------------------------
uploadconfig = {
  ctanPath = "/macros/latex/contrib/chronos",
  pkg = "chronos",
  version = "v0.9.3",
  author = "Clea F. Rees",
  uploader = "Clea F. Rees",
  license = "lppl1.3c",
  update = true,
  summary = "TikZ-based package for drawing customisable timelines with support for colour schemes, styles and memoization.",
  description = "The package supports drawing timelines and aims to be highly customisable. Extensive configuration options are offered via a standard key-value interface based on pgfkeys. Custom colour schemes and styles are supported, and the package includes documented examples of each. Memoization works out-of-the-box if the memoize package is loaded. The code was developed as a result of questions concerning difficulties in customising the output of existing packages for drawing timelines, which sometimes eschew pgfkeys and are often challenging to configure, even when based on PGF/TikZ.",
	bugtracker = "https://codeberg.org/cfr/chronos/issues",
	repository = {"https://codeberg.org/cfr/chronos", "https://github.com/cfr42/chronos"},
  topic = {"diagrams", "pgf-tikz", "expl3", "calendar"},
  -- note = "",
}
--------------------------------------------------------------------------------
date = "2023-2025"
if direxists(sourcedir .. "/../adnoddau/l3build") then
  dofile(sourcedir .. "/../adnoddau/l3build/tag.lua")
end
print(man)
if fileexists(maindir .. "/manifest.lua") then
  dofile(maindir .. "/manifest.lua")
print(man)
elseif direxists(sourcedir .. "/../adnoddau/l3build") then
  dofile(sourcedir .. "/../adnoddau/l3build/manifest.lua")
print(man)
end
print(man)
function manifest_setup ()
  unpack()
  local buildscripts,moretests,srcchksuppfiles = man.list_tests()
  local groups = {
    {
      subheading = "Source files",
    },
    {
      name = "Package files",
      dir = sourcefiledir,
      files = {"*.dtx","*.ins","*.md"},
      exclude = {derivedfiles},
    },
    {
      name = "Development files",
      dir = testfiledir,
      files = {"*" .. lvtext, "*" .. lveext, "*" .. tlgext, "*" .. pvtext, "*" .. tpfext, "*.dtx", "*.ins", "*.tex"},
      description = buildscripts .. srcchksuppfiles .. moretests,
    },
    {
      subheading = "Derived files",
    },
    {
      name = "Package files",
      dir = unpackdir,
      files = {"*.cls","*.sty","*.tex","*.txt"},
      exclude = sourcefiles,
      description = "* manifest.txt",
    },
    {
      name = "Typeset documentation",
      -- files = {typesetfiles,typesetdemofiles},
      files = {"*.pdf"},
      excludefiles = {".","..","chronos-eg.pdf"},
      dir = sourcefiledir,
      -- rename = {"%.%w+$",".pdf"},
    },
  }
  return groups
end
-- vim: ts=2:sw=2:et:
