This patch addresses CRAN check issues by skipping or excluding code chunks in vignettes when the internet or the gitignore API is unavailable.

## Test environments

- os: macos-latest, r: "release"
- os: windows-latest, r: "release"
- os: ubuntu-latest, r: "devel", http-user-agent: "release"
- os: ubuntu-latest, r: "release"
- os: ubuntu-latest, r: "oldrel-1"

- win-builder (devel and release)

## R CMD check results

0 errors | 0 warnings | 1 note

## revdepcheck results

We checked 0 reverse dependencies, comparing R CMD check results across CRAN and dev versions of this package.

- We saw 0 new problems
- We failed to check 0 packages
