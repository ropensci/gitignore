#' Fetch available templates from gitignore.io
#'
#' This return list of all templates supported by gitignore.io.
#'
#' @details The returned list is returned as lower case characters.
#'
#' @return A character with all templates supported by gitignore.io.
#' @export
#'
#' @examples
#' gi_available_templates()
gi_available_templates <-
  function() {

    url = "https://www.toptal.com/developers/gitignore/api/list?format=json"
    res <- curl::curl_fetch_memory(url)

    r <- jsonlite::fromJSON(rawToChar(res$content))

    templates <- tolower(sort(purrr::map_chr(r, "name")))
    unname(templates)
  }