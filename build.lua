-- $Id: build.lua 10889 2025-03-01 20:54:29Z cfrees $
-- Build configuration for chronos
--------------------------------------------------------------------------------
maindir = maindir or "."
sourcedir = sourcedir or maindir
--------------------------------------------------------------------------------
ctanpkg = "chronos"
module = "chronos"
--------------------------------------------------------------------------------
checkconfigs = { "build", "config-mem", "config-refs", "config-xetex" }
checkengines = { "pdftex", "luatex" }
checkopts = "-interaction=nonstopmode -cnf-line='TEXMFHOME=.' -cnf-line='TEXMFLOCAL=.' -cnf-line='TEXMFARCH=.'"
-- indexstyle = "gind.ist"
manifestfile = "manifest.txt"
-- sourcefiles = {"*.dtx","*.ins","chronos.tex"}
sourcefiles = {"*.dtx","*.ins"}
tagfiles = { "*.dtx", "README.md", "build.lua", "*.sty", "chronos.tex", "manifest.txt" }
typesetfiles = {"*-doc.tex", "*-code.tex"}
typesetopts = "-interaction=nonstopmode -cnf-line='TEXMFHOME=.' -cnf-line='TEXMFLOCAL=.' -cnf-line='TEXMFARCH=.'"
typesetruns = 4 -- 4
--------------------------------------------------------------------------------
uploadconfig = {
  ctanPath = "/macros/latex/contrib/chronos",
  pkg = "chronos",
  version = "v0.9",
  author = "Clea F. Rees",
  uploader = "Clea F. Rees",
  license = "lppl1.3c",
  update = false,
  summary = "TikZ-based package for drawing customisable timelines with support for colour schemes, styles and memoization.",
  description = "The package supports drawing timelines and aims to be highly customisable. Extensive configuration options are offered via a standard key-value interface based on pgfkeys. Custom colour schemes and styles are supported, and the package includes documented examples of each. Memoization works out-of-the-box if the memoize package is loaded. The code was developed as a result of questions concerning difficulties in customising the output of existing packages for drawing timelines, which sometimes eschew pgfkeys and are often challenging to configure, even when based on PGF/TikZ.",
	bugtracker = "https://codeberg.org/cfr/chronos/issues",
	repository = {"https://codeberg.org/cfr/chronos", "https://github.com/cfr42/chronos"},
  topic = {"diagrams", "pgf-tikz", "expl3", "calendar"},
  note = "Thanks for noticing I'd left prooftrees references in this. Sorry about that. I do not know if you will accept this since I have not changed the name. However, I have checked with Karl and he thinks the existing name is OK, so maybe ...? Given TL are OK with it, I really don't see any compelling reason to break existing users' documents by changing an existing name already established on TeX SE. I hope this will be acceptable to you.",
}
--------------------------------------------------------------------------------
date = "2023-2025"
if direxists(sourcedir .. "/../adnoddau/l3build") then
  dofile(sourcedir .. "/../adnoddau/l3build/manifest.lua")
  dofile(sourcedir .. "/../adnoddau/l3build/tag.lua")
end
-- vim: ts=2:sw=2:et:
