
<!-- README.md is generated from README.Rmd. Please edit that file -->

# gitignore

<!-- badges: start -->

[![CRAN
status](https://www.r-pkg.org/badges/version/gitignore)](https://cran.r-project.org/package=gitignore)
[![License: GPL
v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)
[![Codecov test
coverage](https://codecov.io/gh/ropensci/gitignore/branch/main/graph/badge.svg)](https://app.codecov.io/gh/ropensci/gitignore?branch=main)
[![DOI](https://zenodo.org/badge/184759416.svg)](https://zenodo.org/badge/latestdoi/184759416)
[![rOpenSci
peer-review](https://badges.ropensci.org/303_status.svg)](https://github.com/ropensci/software-review/issues/303)

[![R build
status](https://github.com/PMassicotte/gitignore/workflows/R-CMD-check/badge.svg)](https://github.com/ropensci/gitignore/actions))
<!-- badges: end -->

Based on the definition proposed by
[freecodecamp](https://www.freecodecamp.org/news/gitignore-what-is-it-and-how-to-add-to-repo/):

> The .gitignore file is a text file that tells Git which files or
> folders to ignore in a project. A local .gitignore file is usually
> placed in the root directory of a project. You can also create a
> global .gitignore file and any entries in that file will be ignored in
> all of your Git repositories.

For any project, it is therefore important to have a `.gitignore` file
that is complete and accurate. The package `gitignore` provides a simple
R interface to the
[gitignore.io](https://www.toptal.com/developers/gitignore) API. It can
be used to fetch gitignore templates that can be included into the
`.gitignore` file of you git repository. The `gitignore` R package can
be used with R package, R Studio project or with any `.gitignore` file.
Note that by default, the `usethis` package populates the `.gitignore`
for the R language when you create a R project. However, it is common to
use many different programming languages in a project such as `LaTeX`,
`python`, `matlab`, `julia` and so one. This is where the `gitignore`
package shines as it can be used to programmatically modify the
`.gitignore` file of your project.

## Installation

The CRAN version of `gitignore` can be installed using:

``` r
install.packages("gitignore")
```

The dev version of `gitignore` can be installed from GitHub:

``` r
install.packages("devtools")
devtools::install_github("ropensci/gitignore")
```

## Examples

There are currently two useful functions in the package:

-   `gi_available_templates()` to fetch all supported gitignore
    templates.
-   `gi_fetch_templates()` to fetch one or many gitignore templates.

Show the first 25 templates returned by `gi_available_templates()`.

``` r
library(gitignore)

head(gi_available_templates(), 25)
#>  [1] "1c"                   "1c-bitrix"            "a-frame"             
#>  [4] "actionscript"         "ada"                  "adobe"               
#>  [7] "advancedinstaller"    "adventuregamestudio"  "agda"                
#> [10] "al"                   "alteraquartusii"      "altium"              
#> [13] "amplify"              "android"              "androidstudio"       
#> [16] "angular"              "anjuta"               "ansible"             
#> [19] "ansibletower"         "apachecordova"        "apachehadoop"        
#> [22] "appbuilder"           "appceleratortitanium" "appcode"             
#> [25] "appcode+all"
```

Templates can be fetched using the `gi_fetch_templates()` function.

``` r
gi_fetch_templates("R")

# Created by https://www.toptal.com/developers/gitignore/api/r
# Edit at https://www.toptal.com/developers/gitignore?templates=r

### R ###
# History files
.Rhistory
.Rapp.history

# Session Data files
.RData

# User-specific files
.Ruserdata

# Example code in package build process
*-Ex.R

# Output files from R CMD build
/*.tar.gz

# Output files from R CMD check
/*.Rcheck/

# RStudio files
.Rproj.user/

# produced vignettes
vignettes/*.html
vignettes/*.pdf

# OAuth2 token, see https://github.com/hadley/httr/releases/tag/v0.3
.httr-oauth

# knitr and R markdown default cache directories
*_cache/
/cache/

# Temporary files created by R markdown
*.utf8.md
*.knit.md

# R Environment Variables
.Renviron

# pkgdown site
docs/

# translation temp files
po/*~

### R.Bookdown Stack ###
# R package: bookdown caching files
/*_files/

# End of https://www.toptal.com/developers/gitignore/api/r
```

Multiple templates can be fetched by specifying multiple values:

``` r
gi_fetch_templates(c("java", "c++"))

# Created by https://www.toptal.com/developers/gitignore/api/java,c++
# Edit at https://www.toptal.com/developers/gitignore?templates=java,c++

### C++ ###
# Prerequisites
*.d

# Compiled Object files
*.slo
*.lo
*.o
*.obj

# Precompiled Headers
*.gch
*.pch

# Compiled Dynamic libraries
*.so
*.dylib
*.dll

# Fortran module files
*.mod
*.smod

# Compiled Static libraries
*.lai
*.la
*.a
*.lib

# Executables
*.exe
*.out
*.app

### Java ###
# Compiled class file
*.class

# Log file
*.log

# BlueJ files
*.ctxt

# Mobile Tools for Java (J2ME)
.mtj.tmp/

# Package Files #
*.jar
*.war
*.nar
*.ear
*.zip
*.tar.gz
*.rar

# virtual machine crash logs, see http://www.java.com/en/download/help/error_hotspot.xml
hs_err_pid*

# End of https://www.toptal.com/developers/gitignore/api/java,c++
```

By default, templates are copied into the clipboard. It is also possible
to modify a `.gitignore` file using the `gi_write_gitignore()` function.

``` r
f <- file.path(tempdir(), ".gitignore")
new_lines <- gi_fetch_templates("r")
gi_write_gitignore(fetched_template = new_lines, gitignore_file = f)
```

If `gitignore_file` is not specified, `gitignore` will try to find the
`.gitignore` file of your current project or package.

More examples are provided in the vignette.

``` r
browseVignettes("gitignore")
```

You can also visit the [gitignore
website](https://docs.ropensci.org/gitignore/).

## Code of conduct

Please note that the ‘gitignore’ project is released with a [Contributor
Code of
Conduct](https://docs.ropensci.org/gitignore/CODE_OF_CONDUCT.html). By
[contributing to this
project](https://docs.ropensci.org/gitignore/CONTRIBUTING.html), you
agree to abide by its terms.

[![ropensci_footer](https://ropensci.org/public_images/ropensci_footer.png)](https://ropensci.org)
