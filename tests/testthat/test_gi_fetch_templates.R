is_clipr_available <- clipr::clipr_available(allow_non_interactive = TRUE)
skip_msg <- "System clipboard is not available - skipping test."


test_that("gi_fetch_templates inputs", {
  expect_error(gi_fetch_templates("a-non-valide-template"))
  expect_error(gi_fetch_templates("R", copy_to_clipboard = "A"))
  expect_error(gi_fetch_templates("R", copy_to_clipboard = 1))
  expect_error(gi_fetch_templates("R", append_gitignore = "A"))
  expect_invisible(gi_fetch_templates("c"))
})

test_that("gi_fetch_templates case do not matter", {
  expect_equal(
    gi_fetch_templates("r"),
    gi_fetch_templates("R")
  )
  expect_equal(
    gi_fetch_templates("c"),
    gi_fetch_templates("C")
  )
  expect_equal(
    gi_fetch_templates("c++"),
    gi_fetch_templates("C++")
  )
})

test_that("Template can be copied in the clipboard", {
  # skip_if_not(is_clipr_available, skip_msg)
  expect_invisible(gi_fetch_templates("c"))

})

test_that("A non existing .gitignore file can be created", {
  f <- paste0(tempdir(), "/.gitignore")
  unlist(f)
  file.create(f)

  expect_invisible(gi_fetch_templates("R", copy_to_clipboard = FALSE, append_gitignore = TRUE, gitignore_file = f))
})