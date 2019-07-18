## Test environments

* local OS X install, R 3.6.1
* Ubuntu 14.04 (on Travis-ci), oldrel, release, devel
* win-builder (devel and release)

## R CMD check results

0 errors | 0 warnings | 1 note

* This is a new release.

## Downstream dependencies

There are currently no reverse dependencies for this package.

## Re-submission

The package was archived because it was using the clipboard on Linux. This new release fixes this. Explicitly:

- Tests using the clipboard are now skipped on Linux.
- The code in the vignette do not use the clipboard.
- The code examples do not use the clipboard.
- Temporary files created for the examples are now deleted using the `unlink()` function.