#' Fetch available templates from gitignore.io
#'
#' This return list of all operating systems, IDE or programming languages supported by gitignore.io.
#'
#' @details The returned list is returned as lower case characters.
#'
#' @return A character vector with all operating systems, IDE or programming languages supported by gitignore.io.
#' @export
#'
#' @examples
#' gitignore_fetch_available_templates()
gitignore_fetch_available_templates <- function() {
  res <- curl::curl_fetch_memory("https://www.gitignore.io/api/list?format=json")

  # Something went wrong
  if (res$status_code != 200) {
    stop("Status code was not 200. Returned status code:", res$status_code)
  }

  r <- jsonlite::fromJSON(rawToChar(res$content))

  templates <- tolower(sort(purrr::map_chr(r, "name")))
  unname(templates)
}
