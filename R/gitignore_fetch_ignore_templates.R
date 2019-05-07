#' Fetch gitignore template(s) from gitignore.io
#'
#' @param template_name A character vector with values included in `gitignore_fetch_available_templates()`.
#' @param copy_to_clipboard Logical. Should the returned template(s) be copied to the clipboard? Otherwise, it will be printed in the console.
#' @param append_gitignore Logical. Should the .gitignore be modified to include the returned template(s)?
#'
#' @return A gitignore template.
#' @export
#'
#' @examples
#' # Fetch template for the R language
#' gitignore_fetch_ignore_templates("R")
#'
#' # You can combine many templates at once
#' gitignore_fetch_ignore_templates(c("R", "python", "java"))
#'
#' # The .gitignore file can be automatically modified with `append_gitignore = TRUE`
#' gitignore_fetch_ignore_templates(c("R", "python", "java"))
gitignore_fetch_ignore_templates <- function(template_name, copy_to_clipboard = TRUE, append_gitignore = FALSE) {

  # template_name <- c("java", "sdf", "asdsdf", "R")

  # Check if vector of char
  stopifnot(
    is.atomic(template_name),
    is.character(template_name),
    is.atomic(template_name) || is.list(template_name),
    is.logical(copy_to_clipboard),
    is.logical(append_gitignore)
  )

  template_name <- tolower(template_name)

  # Check is all template_names exist, i.e. supported by gitignore.io
  l <- gitignore_fetch_available_templates()

  i <- template_name %in% l

  if (!all(i)) {
    stop("Some template_name were not found on gitignore.io: ", crayon::red$bold(paste(template_name[!i], collapse = ", ")))
  }

  # Fetch the gitignore data
  template_name <- paste(template_name, collapse = ",")

  r <- curl::curl_fetch_memory(glue::glue("https://www.gitignore.io/api/{template_name}"))

  # Copy or not into the clipboard
  if (copy_to_clipboard && clipr::clipr_available()) {
    clipr::write_clip(rawToChar(r$content))
    cat(crayon::green(clisymbols::symbol$bullet), "Copied to the clipboard. You can now paste it in your .gitignore file.\n")
  }

  if (append_gitignore) {
    gitignore_write_gitignore(rawToChar(r$content))
  }

  invisible(rawToChar(r$content))
}
