backend_url <- function() {
  "https://www.toptal.com/developers/gitignore"
}

is_url_available <- function(url_in = backend_url()) {
  con <- url(url_in)
  check <- suppressWarnings(
    try(open.connection(con, open = "rt", timeout = 2), silent = TRUE)[1]
  )
  suppressWarnings(try(close.connection(con), silent = TTRUE))
  ifelse(is.null(check), TRUE, FALSE)
}
