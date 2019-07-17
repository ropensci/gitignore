#' Append or create a .gitignore file
#'
#' Use the returned template(s) to append the existing .gitignore file.
#'
#' @param fetched_template Template(s) returned by `gi_fetch_templates()`.
#' @param gitignore_file Path of the .gitignore file to modify.
#'
#' @return TRUE if succeeds to write/append the .gitignore, FALSE otherwise.
#'
#' @export
#'
#' @examples
#' \donttest{
#' f <- paste0(tempdir(), "/.gitignore")
#' new_lines <- gi_fetch_templates("r")
#' gi_write_gitignore(new_lines, f)
#'
#' unlink(f)
#' }
gi_write_gitignore <-
  function(fetched_template,
             gitignore_file = here::here(".gitignore")) {

    stopifnot(basename(gitignore_file) == ".gitignore")

    if (!file.exists(gitignore_file)) { # nocov start
      message(
        crayon::red(clisymbols::symbol$bullet),
        " The .gitignore file could not be found in the project directory",
        here::here(),
        "Would you like to create it?",
        "\n"
      )

      response <- utils::menu(c("Yes", "No"))

      if (response == 1) {

        file.create(gitignore_file)

      } else {
        stop(
         "Could not find the file: ",
          crayon::red$bold(gitignore_file)
        )
      }
    } # nocov end

    existing_lines <-
      readLines(gitignore_file, warn = FALSE, encoding = "UTF-8")

    fetched_template_splitted <- unlist(strsplit(fetched_template, "\n"))

    new <- setdiff(fetched_template_splitted, existing_lines)

    if (length(new) == 0) {
      message(
        crayon::yellow(clisymbols::symbol$bullet),
        " Nothing to be modified in the .gitignore file.\n"
      )
      return(FALSE)
    }

    all <- c(existing_lines, new)

    xfun::write_utf8(all, gitignore_file)

    message(
      crayon::green(clisymbols::symbol$bullet),
      " .gitignore file successfully modified.\n"
    )

    invisible(TRUE)
  }