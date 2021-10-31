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

    url <- glue::glue("{backend_url()}/api/list?format=json")
    res <- curl::curl_fetch_memory(url)

    if (res$status_code != 200) {
      stop(paste("http request failed with status code:"), res$status_code)
    }

    json_text <- rawToChar(res$content)

    if (!jsonlite::validate(json_text)) {
      stop("Invalid json file returned in gi_available_templates() function.")
    }

    r <- jsonlite::fromJSON(json_text)

    templates <- tolower(sort(purrr::map_chr(r, "name")))
    unname(templates)
  }