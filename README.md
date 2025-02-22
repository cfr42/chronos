$Id: README.md 10578 2024-11-05 05:23:46Z cfrees $

# chronos

TikZ-based package for drawing customisable timelines with pgfkeys-based configuration and support for colour schemes, styles and memoization.

## Licence

Copyright 2023-2025 Clea F. Rees

This work may be distributed and/or modified under the
conditions of the LaTeX Project Public License, either version 1.3c
of this license or (at your option) any later version.
The latest version of this license is in
https://www.latex-project.org/lppl.txt
and version 1.3c or later is part of all distributions of LaTeX
version 2008-05-04 or later.

This work has the LPPL maintenance status `maintained'.

The Current Maintainer of this work is Clea F. Rees.

This file may only be distributed together with a copy of the package
chronos. You may however distribute the package chronos without
such generated files.

This work consists of all files listed in manifest.txt.

## Features

The package supports drawing timelines and aims to be highly customisable. 
Extensive configuration options are offered via a standard key-value interface 
based on pgfkeys. Custom colour schemes and styles are supported, and the 
package includes documented examples of each. Memoization works out-of-the-box 
if the memoize package is loaded. The code was developed as a result of 
questions concerning difficulties in customising the output of existing packages 
for drawing timelines, which sometimes eschew pgfkeys and are often challenging 
to configure, even when based on PGF/TikZ.

chronos is based on TikZ, but uses some functions from expl3.

## Code Repositories

Code for the package is hosted at 
  https://codeberg.org/cfr/chronos
For convenience, the repository is mirrored at
  https://github.com/cfr42/chronos

## Contact Details

Bug reports, feature requests etc. should be filed at
  https://codeberg.org/cfr/chronos/issues


Clea F. Rees
Version 0.1
2025-02-22

vim: et:tw=80:ts=2:
