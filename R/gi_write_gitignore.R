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
#' \dontrun{
#' f <- file.path(tempdir(), ".gitignore")
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
      cli::cli_inform(c(
        "x" = "The .gitignore file could not be found in the
        project directory {.path {here::here()}}",
        i = "Would you like to create it?"
      ))

      response <- utils::menu(c("Yes", "No"))

      if (response == 1) {

        file.create(gitignore_file)

      } else {
        cli::cli_abort(
         "Could not find the file: {.file {gitignore_file}}",
        )
      }
    } # nocov end

    existing_lines <-
      readLines(gitignore_file, warn = FALSE, encoding = "UTF-8")

    fetched_template_splitted <- unlist(strsplit(fetched_template, "\n"))

    new <- setdiff(fetched_template_splitted, existing_lines)

    if (length(new) == 0) {
      cli::cli_inform(c(
        "!" = "Nothing to be modified in the {.file .gitignore} file."
      ))
      return(FALSE)
    }

    all <- c(existing_lines, new)

    xfun::write_utf8(all, gitignore_file)

    cli::cli_inform(c(
      "v" = "{.file .gitignore} file successfully modified."
    ))

    invisible(TRUE)
  }