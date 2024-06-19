# gitignore (development version)

- gitignore now provides clickable links as it uses cli instead of crayon (@olivroy).

# gitignore 0.1.6

- Skip or do not execute code chunks in vignettes if the internet or the gitignore API is not available, to fix CRAN problems.
- Update workflow link to point to the v2 branch of r-lib/actions repository.

# gitignore 0.1.5

- Using Github Actions for continuous integration.

- Fixing CRAN check results where tests failed when internet connection was not available (#18).

# gitignore 0.1.4

- Change backend from https://www.gitignore.io/ to https://www.toptal.com/developers/gitignore as the former now redirects to the latter (#13 @pat-s).

- Use `file.path()` instead of `paste0()` to build path. @dpprdan

# gitignore 0.1.3

- This is a minor update that prevent the use of the clipboard on CRAN Linux systems.

# gitignore 0.1.2

- First release on CRAN.

# gitignore 0.1.1

- First release on rOpenSci.
