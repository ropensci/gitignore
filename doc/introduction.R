## ---- include = FALSE----------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup---------------------------------------------------------------
library(gitignore)

## ------------------------------------------------------------------------
head(gi_available_templates(), 50)

## ------------------------------------------------------------------------
gi_fetch_templates(c("java", "c++"))

## ---- eval=FALSE---------------------------------------------------------
#  gi_fetch_templates(c("java", "c++"), copy_to_clipboard = FALSE)

## ---- eval=FALSE---------------------------------------------------------
#  gi_fetch_templates(c("R"), append_gitignore = TRUE)

## ---- message=TRUE-------------------------------------------------------
f <- tempfile(pattern = "", fileext = ".gitignore")

file.create(f)

gi_fetch_templates("R", gitignore_file = f, append_gitignore = TRUE)
  
readLines(f)
  

