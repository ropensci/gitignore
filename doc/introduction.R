## ---- include = FALSE----------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup---------------------------------------------------------------
library(gitignore)

## ------------------------------------------------------------------------
head(gitignore_fetch_available_templates(), 50)

## ------------------------------------------------------------------------
gitignore_fetch_ignore_templates(c("java", "c++"))

## ------------------------------------------------------------------------
gitignore_fetch_ignore_templates(c("java", "c++"), copy_to_clipboard = FALSE)

## ---- eval=FALSE---------------------------------------------------------
#  gitignore_fetch_ignore_templates(c("java", "c++"), append_gitignore = TRUE)

