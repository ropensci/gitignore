test_that("gi_fetch_ignore_templates inputs", {
  expect_error(gi_fetch_ignore_templates("a-non-valide-template"))
  expect_error(gi_fetch_ignore_templates("R", copy_to_clipboard = "A"))
  expect_error(gi_fetch_ignore_templates("R", copy_to_clipboard = 1))
  expect_error(gi_fetch_ignore_templates("R", append_gitignore = "A"))
  expect_invisible(gi_fetch_ignore_templates("c"))
})

test_that("gi_fetch_ignore_templates case do not matter", {
  expect_equal(gi_fetch_ignore_templates("r"), gi_fetch_ignore_templates("R"))
  expect_equal(gi_fetch_ignore_templates("c"), gi_fetch_ignore_templates("C"))
  expect_equal(gi_fetch_ignore_templates("c++"), gi_fetch_ignore_templates("C++"))
})