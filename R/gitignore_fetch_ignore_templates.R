#' Fetch the git ignore template from gitignore.io
#'
#' @param template_name A character vector with values included in `gitignore_fetch_available_templates()`.
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
gitignore_fetch_ignore_templates <- function(template_name) {

  # template_name <- c("java", "sdf", "asdsdf", "R")

  # Check if vector of char
  stopifnot(
    is.atomic(template_name), # Check if ok
    is.character(template_name),
    is.atomic(template_name) || is.list(template_name)
  )

  template_name <- tolower(template_name)

  # Check is all template_names exist, i.e. supported by gitignore.io
  l <- gitignore_fetch_available_templates()

  i <- template_name %in% l

  if (!all(i)) {
    stop("Some template_name were not found on gitignore.io: ", crayon::red$bold(paste(template_name[!i], collapse = ", ")))
  }

  # Fetch the gitirnore data
  template_name <- paste(template_name, collapse = ",")

  r <- curl::curl_fetch_memory(glue::glue("https://www.gitignore.io/api/{template_name}"))

  writeLines(rawToChar(r$content))


}