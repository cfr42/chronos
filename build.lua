-- $Id: build.lua 10850 2025-02-23 04:21:03Z cfrees $
-- Build configuration for chronos
--------------------------------------------------------------------------------
maindir = maindir or "."
sourcedir = sourcedir or maindir
--------------------------------------------------------------------------------
ctanpkg = "chronos"
module = "chronos"
--------------------------------------------------------------------------------
checkconfigs = { "build", "config-mem" }
manifestfile = "manifest.txt"
sourcefiles = {"*.sty","chronos.tex"}
tagfiles = { "*.dtx", "README.md", "*.sty", "chronos.tex", "manifest.txt" }
typesetfiles = {"chronos.tex"}
--------------------------------------------------------------------------------
indexstyle = ""
typesetruns = 4
--------------------------------------------------------------------------------
uploadconfig = {
  ctanPath = "/macros/latex/contrib/chronos",
  pkg = "chronos",
  version = "v0.1",
  author = "Clea F. Rees",
  uploader = "Clea F. Rees",
  license = "lppl1.3c",
  update = false,
  summary = "TikZ-based package for drawing customisable timelines with pgfkeys-based configuration and support for colour schemes, styles and memoization.",
  description = "The package supports drawing timelines and aims to be highly customisable. Extensive configuration options are offered via a standard key-value interface based on pgfkeys. Custom colour schemes and styles are supported, and the package includes documented examples of each. Memoization works out-of-the-box if the memoize package is loaded. The code was developed as a result of questions concerning difficulties in customising the output of existing packages for drawing timelines, which sometimes eschew pgfkeys and are often challenging to configure, even when based on PGF/TikZ.",
	bugtracker = "https://codeberg.org/cfr/chronos/issues",
	repository = {"https://codeberg.org/cfr/chronos", "https://github.com/cfr42/chronos"},
  topic = {"diagrams", "pgf-tikz", "expl3", "calendar"},
  note = "I'm not sure if it is permitted to suggest a new tag, but questions on TeX SE suggest 'timelines' or 'timeline' might be useful in search terms. I wouldn't call the diagrams this constructs a 'calendar' exactly, but I couldn't find an existing tag with a better fit. But I understand if you don't want to proliferate topics.",
}
--------------------------------------------------------------------------------
date = "2023-2025"
if direxists(sourcedir .. "/../adnoddau/l3build") then
  dofile(sourcedir .. "/../adnoddau/l3build/manifest.lua")
  dofile(sourcedir .. "/../adnoddau/l3build/tag.lua")
end
-- vim: ts=2:sw=2:et:
