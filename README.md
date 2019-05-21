
<!-- README.md is generated from README.Rmd. Please edit that file -->

# gitignore

<!-- badges: start -->

[![CRAN
status](https://www.r-pkg.org/badges/version/gitignore)](https://cran.r-project.org/package=gitignore)
[![License: GPL
v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)
[![AppVeyor build
status](https://ci.appveyor.com/api/projects/status/github/PMassicotte/gitignore?branch=master&svg=true)](https://ci.appveyor.com/project/PMassicotte/gitignore)
[![Travis build
status](https://travis-ci.org/PMassicotte/gitignore.svg?branch=master)](https://travis-ci.org/PMassicotte/gitignore)
[![Codecov test
coverage](https://codecov.io/gh/PMassicotte/gitignore/branch/master/graph/badge.svg)](https://codecov.io/gh/PMassicotte/gitignore?branch=master)
<!-- badges: end -->

The package `gitignore` provides a simple R interface to the
[gitignore.io](https://gitignore.io/) API. It can be used to fetch
gitignore templates that can be included into the `.gitignore` file of
you git repository.

## Installation

You can install the released version of gitignore from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("gitignore") # Not currently published on CRAN
```

Or the dev version with:

``` r
install.packages("devtools")
devtools::install_github("pmassicotte/gitignore")
```

## Examples

There are currently two useful functions in the package:

  - `gi_fetch_available_templates()` to fetch all supported gitignore
    templates.
  - `gi_fetch_ignore_templates()` to fetch one or many gitignore
    templates.

<!-- end list -->

``` r
library(gitignore)

head(gi_fetch_available_templates(), 25)
#>  [1] "1c"                   "1c-bitrix"            "a-frame"             
#>  [4] "actionscript"         "ada"                  "adobe"               
#>  [7] "advancedinstaller"    "agda"                 "al"                  
#> [10] "alteraquartusii"      "altium"               "android"             
#> [13] "androidstudio"        "angular"              "anjuta"              
#> [16] "ansible"              "apachecordova"        "apachehadoop"        
#> [19] "appbuilder"           "appceleratortitanium" "appcode"             
#> [22] "appcode+all"          "appcode+iml"          "appengine"           
#> [25] "aptanastudio"
```

Templates can be fecthed using the `gi_fetch_ignore_templates()`
function.

``` r
gi_fetch_ignore_templates("R")
```

Multiple templates can be fetched by specifying multiple values:

``` r
gi_fetch_ignore_templates(c("java", "c++"))
```

## Code of conduct

Please note that the ‘gitignore’ project is released with a [Contributor
Code of Conduct](CODE_OF_CONDUCT.md). By contributing to this project,
you agree to abide by its terms.
