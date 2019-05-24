#' Append .gitignore file
#'
#' Use returned template(s) to append the existing .gitignore file.
#'
#' @param new_lines Template returned by `gi_fetch_ignore_templates()`.
#' @param gitignore_file Path of the .gitignore file to modify.
gi_write_gitignore <-
  function(new_lines,
             gitignore_file = here::here(".gitignore")) {

    stopifnot(basename(gitignore_file) != ".gitignore")

    if (!file.exists(gitignore_file)) {
      cat(
        crayon::red(clisymbols::symbol$bullet),
        "The .gitignore file could not be found in the project directory",
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
    }

    existing_lines <-
      readLines(gitignore_file, warn = FALSE, encoding = "UTF-8")

    new_lines_splitted <- unlist(strsplit(new_lines, "\n"))

    new <- setdiff(new_lines_splitted, existing_lines)

    if (length(new) == 0) {
      cat(
        crayon::yellow(clisymbols::symbol$bullet),
        "Nothing to be modified in the .gitignore file.\n"
      )
      return(FALSE)
    }

    all <- c(existing_lines, new)

    xfun::write_utf8(all, gitignore_file)

    cat(
      crayon::green(clisymbols::symbol$bullet),
      ".gitignore file successfully modified.\n"
    )
  }