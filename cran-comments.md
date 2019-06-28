## Test environments

* local OS X install, R 3.6.0
* ubuntu 14.04 (on travis-ci), R 3.2, 3.3, 3.4, oldrel, release, devel
* win-builder (devel and release)

## R CMD check results

0 errors | 0 warnings | 1 note

* This is a new release.

## Downstream dependencies

There are currently no reverse dependencies for this package.

## Re-submission

This is a re-submission fixing two minor elements pointed out by Swetlana Herbrandt.

- Please replace \dontrun{} by \donttest{}
- Please do not write to the clipboard by default (copy_to_clipboard = FALSE).