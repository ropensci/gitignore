
<!-- README.md is generated from README.Rmd. Please edit that file -->

# gitignore

<!-- badges: start -->

<!-- badges: end -->

The goal of gitignore is to …

## Installation

You can install the released version of gitignore from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("gitignore")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
# devtools::install_github("pmassicotte/gitignore")
library(gitignore)

gitignore_fetch_available_templates()
#>   [1] "1c"                          "1c-bitrix"                  
#>   [3] "a-frame"                     "actionscript"               
#>   [5] "ada"                         "adobe"                      
#>   [7] "advancedinstaller"           "agda"                       
#>   [9] "al"                          "alteraquartusii"            
#>  [11] "altium"                      "android"                    
#>  [13] "androidstudio"               "angular"                    
#>  [15] "anjuta"                      "ansible"                    
#>  [17] "apachecordova"               "apachehadoop"               
#>  [19] "appbuilder"                  "appceleratortitanium"       
#>  [21] "appcode"                     "appcode+all"                
#>  [23] "appcode+iml"                 "appengine"                  
#>  [25] "aptanastudio"                "arcanist"                   
#>  [27] "archive"                     "archives"                   
#>  [29] "archlinuxpackages"           "aspnetcore"                 
#>  [31] "assembler"                   "ate"                        
#>  [33] "atmelstudio"                 "ats"                        
#>  [35] "audio"                       "automationstudio"           
#>  [37] "autotools"                   "autotools+strict"           
#>  [39] "backup"                      "ballerina"                  
#>  [41] "basercms"                    "basic"                      
#>  [43] "batch"                       "bazaar"                     
#>  [45] "bazel"                       "bitrise"                    
#>  [47] "bitrix"                      "bittorrent"                 
#>  [49] "blackbox"                    "bloop"                      
#>  [51] "bluej"                       "bookdown"                   
#>  [53] "bower"                       "bricxcc"                    
#>  [55] "buck"                        "c"                          
#>  [57] "c++"                         "cake"                       
#>  [59] "cakephp"                     "cakephp2"                   
#>  [61] "cakephp3"                    "calabash"                   
#>  [63] "carthage"                    "ceylon"                     
#>  [65] "cfwheels"                    "chefcookbook"               
#>  [67] "chocolatey"                  "clean"                      
#>  [69] "clion"                       "clion+all"                  
#>  [71] "clion+iml"                   "clojure"                    
#>  [73] "cloud9"                      "cmake"                      
#>  [75] "cocoapods"                   "cocos2dx"                   
#>  [77] "cocoscreator"                "code"                       
#>  [79] "code-java"                   "codeblocks"                 
#>  [81] "codecomposerstudio"          "codeigniter"                
#>  [83] "codeio"                      "codekit"                    
#>  [85] "codesniffer"                 "coffeescript"               
#>  [87] "commonlisp"                  "composer"                   
#>  [89] "compressed"                  "compressedarchive"          
#>  [91] "compression"                 "concrete5"                  
#>  [93] "coq"                         "cordova"                    
#>  [95] "craftcms"                    "crashlytics"                
#>  [97] "crbasic"                     "crossbar"                   
#>  [99] "crystal"                     "csharp"                     
#> [101] "cuda"                        "cvs"                        
#> [103] "d"                           "dart"                       
#> [105] "darteditor"                  "data"                       
#> [107] "database"                    "datarecovery"               
#> [109] "dbeaver"                     "delphi"                     
#> [111] "diff"                        "diskimage"                  
#> [113] "django"                      "dm"                         
#> [115] "docfx"                       "docpress"                   
#> [117] "dotfilessh"                  "dotsettings"                
#> [119] "dreamweaver"                 "dropbox"                    
#> [121] "drupal"                      "drupal7"                    
#> [123] "drupal8"                     "eagle"                      
#> [125] "easybook"                    "eclipse"                    
#> [127] "eiffelstudio"                "elasticbeanstalk"           
#> [129] "elisp"                       "elixir"                     
#> [131] "elm"                         "emacs"                      
#> [133] "ember"                       "ensime"                     
#> [135] "episerver"                   "erlang"                     
#> [137] "espresso"                    "executable"                 
#> [139] "exercism"                    "expressionengine"           
#> [141] "extjs"                       "fancy"                      
#> [143] "fastlane"                    "finale"                     
#> [145] "firebase"                    "flashbuilder"               
#> [147] "flask"                       "flex"                       
#> [149] "flexbuilder"                 "floobits"                   
#> [151] "flutter"                     "font"                       
#> [153] "fontforge"                   "forcedotcom"                
#> [155] "forgegradle"                 "fortran"                    
#> [157] "freepascal"                  "fsharp"                     
#> [159] "fuelphp"                     "fusetools"                  
#> [161] "games"                       "gcov"                       
#> [163] "genero4gl"                   "geth"                       
#> [165] "ggts"                        "gis"                        
#> [167] "git"                         "gitbook"                    
#> [169] "go"                          "godot"                      
#> [171] "gpg"                         "gradle"                     
#> [173] "grails"                      "greenfoot"                  
#> [175] "grunt"                       "gwt"                        
#> [177] "haskell"                     "hexo"                       
#> [179] "hol"                         "homeassistant"              
#> [181] "hsp"                         "hugo"                       
#> [183] "hyperledgercomposer"         "iar"                        
#> [185] "iar_ewarm"                   "iarembeddedworkbench"       
#> [187] "idapro"                      "idris"                      
#> [189] "igorpro"                     "images"                     
#> [191] "infer"                       "inforcms"                   
#> [193] "inforcrm"                    "intellij"                   
#> [195] "intellij+all"                "intellij+iml"               
#> [197] "ionic3"                      "jabref"                     
#> [199] "java"                        "java-web"                   
#> [201] "jboss"                       "jboss-4-2-3-ga"             
#> [203] "jboss-6-x"                   "jboss4"                     
#> [205] "jboss6"                      "jdeveloper"                 
#> [207] "jekyll"                      "jenv"                       
#> [209] "jetbrains"                   "jetbrains+all"              
#> [211] "jetbrains+iml"               "jgiven"                     
#> [213] "jigsaw"                      "jmeter"                     
#> [215] "joe"                         "joomla"                     
#> [217] "jspm"                        "julia"                      
#> [219] "jupyternotebook"             "jupyternotebooks"           
#> [221] "justcode"                    "kate"                       
#> [223] "kdevelop4"                   "keil"                       
#> [225] "kentico"                     "kicad"                      
#> [227] "kirby2"                      "kobalt"                     
#> [229] "kohana"                      "komodoedit"                 
#> [231] "kotlin"                      "labview"                    
#> [233] "labviewnxg"                  "lamp"                       
#> [235] "laravel"                     "latex"                      
#> [237] "lazarus"                     "leiningen"                  
#> [239] "lemonstand"                  "less"                       
#> [241] "liberosoc"                   "librarian-chef"             
#> [243] "libreoffice"                 "lilypond"                   
#> [245] "linux"                       "lithium"                    
#> [247] "logtalk"                     "lua"                        
#> [249] "lyx"                         "m2e"                        
#> [251] "macos"                       "magento"                    
#> [253] "magento1"                    "magento2"                   
#> [255] "magic-xpa"                   "matlab"                     
#> [257] "maven"                       "mavensmate"                 
#> [259] "mean"                        "mercurial"                  
#> [261] "mercury"                     "metals"                     
#> [263] "metaprogrammingsystem"       "meteor"                     
#> [265] "meteorjs"                    "microsoftoffice"            
#> [267] "mikroc"                      "moban"                      
#> [269] "modelsim"                    "modx"                       
#> [271] "momentics"                   "monodevelop"                
#> [273] "mplabx"                      "mule"                       
#> [275] "nanoc"                       "nativescript"               
#> [277] "ncrunch"                     "nesc"                       
#> [279] "netbeans"                    "nette"                      
#> [281] "nikola"                      "nim"                        
#> [283] "ninja"                       "node"                       
#> [285] "notepadpp"                   "nuxt"                       
#> [287] "nuxtjs"                      "nwjs"                       
#> [289] "objective-c"                 "ocaml"                      
#> [291] "octave"                      "octobercms"                 
#> [293] "opa"                         "opencart"                   
#> [295] "opencv"                      "openfoam"                   
#> [297] "openframeworks"              "openframeworks+visualstudio"
#> [299] "oracleforms"                 "osx"                        
#> [301] "otto"                        "packer"                     
#> [303] "particle"                    "patch"                      
#> [305] "pawn"                        "perl"                       
#> [307] "perl6"                       "ph7cms"                     
#> [309] "phalcon"                     "phoenix"                    
#> [311] "phpcodesniffer"              "phpstorm"                   
#> [313] "phpstorm+all"                "phpstorm+iml"               
#> [315] "pimcore"                     "pimcore4"                   
#> [317] "pimcore5"                    "pinegrow"                   
#> [319] "platformio"                  "playframework"              
#> [321] "plone"                       "polymer"                    
#> [323] "powershell"                  "premake-gmake"              
#> [325] "prepros"                     "prestashop"                 
#> [327] "processing"                  "progressabl"                
#> [329] "psoccreator"                 "puppet"                     
#> [331] "puppet-librarian"            "purebasic"                  
#> [333] "purescript"                  "putty"                      
#> [335] "pvs"                         "pycharm"                    
#> [337] "pycharm+all"                 "pycharm+iml"                
#> [339] "pydev"                       "python"                     
#> [341] "qml"                         "qooxdoo"                    
#> [343] "qt"                          "qtcreator"                  
#> [345] "r"                           "racket"                     
#> [347] "rails"                       "reactnative"                
#> [349] "red"                         "redcar"                     
#> [351] "redis"                       "rhodesrhomobile"            
#> [353] "rider"                       "root"                       
#> [355] "ros"                         "ruby"                       
#> [357] "rubymine"                    "rubymine+all"               
#> [359] "rubymine+iml"                "rust"                       
#> [361] "salesforce"                  "salesforcedx"               
#> [363] "sas"                         "sass"                       
#> [365] "sbt"                         "scala"                      
#> [367] "scheme"                      "scons"                      
#> [369] "scrivener"                   "sdcc"                       
#> [371] "seamgen"                     "senchatouch"                
#> [373] "serverless"                  "shopware"                   
#> [375] "silverstripe"                "sketchup"                   
#> [377] "slickedit"                   "smalltalk"                  
#> [379] "snap"                        "snapcraft"                  
#> [381] "solidity"                    "soliditytruffle"            
#> [383] "sonar"                       "sonarqube"                  
#> [385] "sourcepawn"                  "splunk"                     
#> [387] "spreadsheet"                 "standardml"                 
#> [389] "stata"                       "stdlib"                     
#> [391] "stella"                      "stellar"                    
#> [393] "stylus"                      "sublimetext"                
#> [395] "sugarcrm"                    "svn"                        
#> [397] "swift"                       "swiftpackagemanager"        
#> [399] "swiftpm"                     "symfony"                    
#> [401] "symphonycms"                 "synology"                   
#> [403] "synopsysvcs"                 "tags"                       
#> [405] "tarmainstallmate"            "terraform"                  
#> [407] "test"                        "testcomplete"               
#> [409] "testinfra"                   "tex"                        
#> [411] "text"                        "textmate"                   
#> [413] "textpattern"                 "theos-tweak"                
#> [415] "thinkphp"                    "tortoisegit"                
#> [417] "tower"                       "turbogears2"                
#> [419] "twincat"                     "typings"                    
#> [421] "typo3"                       "typo3-composer"             
#> [423] "umbraco"                     "unity"                      
#> [425] "unrealengine"                "vaadin"                     
#> [427] "vagrant"                     "valgrind"                   
#> [429] "vapor"                       "venv"                       
#> [431] "vertx"                       "video"                      
#> [433] "vim"                         "virtualenv"                 
#> [435] "virtuoso"                    "visualstudio"               
#> [437] "visualstudiocode"            "vivado"                     
#> [439] "vlab"                        "vuejs"                      
#> [441] "vvvv"                        "waf"                        
#> [443] "wakanda"                     "web"                        
#> [445] "webmethods"                  "webstorm"                   
#> [447] "webstorm+all"                "webstorm+iml"               
#> [449] "werckercli"                  "windows"                    
#> [451] "wintersmith"                 "wordpress"                  
#> [453] "wyam"                        "xamarinstudio"              
#> [455] "xcode"                       "xcodeinjection"             
#> [457] "xilinx"                      "xilinxise"                  
#> [459] "xilinxvivado"                "xill"                       
#> [461] "xojo"                        "xtext"                      
#> [463] "y86"                         "yeoman"                     
#> [465] "yii"                         "yii2"                       
#> [467] "zendframework"               "zephir"                     
#> [469] "zig"                         "zukencr8000"

gitignore_fetch_ignore("R")
#> 
#> # Created by https://www.gitignore.io/api/r
#> # Edit at https://www.gitignore.io/?templates=r
#> 
#> ### R ###
#> # History files
#> .Rhistory
#> .Rapp.history
#> 
#> # Session Data files
#> .RData
#> 
#> # User-specific files
#> .Ruserdata
#> 
#> # Example code in package build process
#> *-Ex.R
#> 
#> # Output files from R CMD build
#> /*.tar.gz
#> 
#> # Output files from R CMD check
#> /*.Rcheck/
#> 
#> # RStudio files
#> .Rproj.user/
#> 
#> # produced vignettes
#> vignettes/*.html
#> vignettes/*.pdf
#> 
#> # OAuth2 token, see https://github.com/hadley/httr/releases/tag/v0.3
#> .httr-oauth
#> 
#> # knitr and R markdown default cache directories
#> /*_cache/
#> /cache/
#> 
#> # Temporary files created by R markdown
#> *.utf8.md
#> *.knit.md
#> 
#> ### R.Bookdown Stack ###
#> # R package: bookdown caching files
#> /*_files/
#> 
#> # End of https://www.gitignore.io/api/r
```
