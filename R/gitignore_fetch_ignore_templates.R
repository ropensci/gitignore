#' Fetch gitignore template(s) from gitignore.io
#'
#' @param template_name A character vector with values included in \code{\link{gi_available_templates}}.
#' @param copy_to_clipboard Logical. Should the returned template(s) be copied to the clipboard? Otherwise, it will be printed in the console.
#' @param append_gitignore Logical. Should the .gitignore be modified to include the returned template(s)?
#' @param gitignore_file The path of the .gitignore file to be modified. By default, it will try to find it in the current package/project using `here::here(".gitignore")`.
#'
#' @return A character containing gitignore template(s).
#' @export
#'
#' @examples
#' # Fetch template for the R language
#' gi_fetch_templates("R")
#'
#' # You can combine many templates at once
#' gi_fetch_templates(c("R", "python", "java"))
#'
#' # The .gitignore file can be automatically modified with `append_gitignore = TRUE`
#' gi_fetch_templates(c("R", "python", "java"))
gi_fetch_templates <-
  function(template_name,
             copy_to_clipboard = TRUE,
             append_gitignore = FALSE,
             gitignore_file = here::here(".gitignore")) {

    # Check if vector of char
    stopifnot(
      is.character(template_name),
      is.logical(copy_to_clipboard),
      is.logical(append_gitignore)
    )

    template_name <- tolower(template_name)

    # Check is all template_names exist, i.e. supported by gitignore.io
    l <- gi_available_templates()

    i <- template_name %in% l

    if (!all(i)) {
      stop(
        "Some template_name were not found on gitignore.io: ",
        crayon::red$bold(paste(template_name[!i], collapse = ", "))
      )
    }

    # Fetch the gitignore data
    template_name <- paste(template_name, collapse = ",")

    r <- curl::curl_fetch_memory(
      glue::glue("https://www.gitignore.io/api/{template_name}")
    )

    # Copy or not into the clipboard
    if (copy_to_clipboard && clipr::clipr_available()) {
      clipr::write_clip(rawToChar(r$content))
      message(
        crayon::green(clisymbols::symbol$bullet),
        paste(
          " Copied to the clipboard.",
          "You can now paste it in your .gitignore file.\n"
        )
      )
    } else {
      cat(rawToChar(r$content))
    }

    if (append_gitignore) {
      gi_write_gitignore(rawToChar(r$content), gitignore_file)
    }

    invisible(rawToChar(r$content))
  }