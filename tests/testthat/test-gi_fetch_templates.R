test_that("gi_fetch_templates inputs", {
  skip_on_cran()
  skip_if_offline()

  expect_error(gi_fetch_templates("a-non-valid-template"))
  expect_error(gi_fetch_templates("R", copy_to_clipboard = "A"))
  expect_error(gi_fetch_templates("R", copy_to_clipboard = 1))
  expect_error(gi_fetch_templates("R", append_gitignore = "A"))
  expect_invisible(gi_fetch_templates("c"))
})

test_that("gi_fetch_templates case do not matter", {
  skip_on_cran()
  skip_if_offline()

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
  skip_on_cran()
  skip_if_offline()

  expect_invisible(gi_fetch_templates("c"))
})

test_that("A non existing .gitignore file can be created", {
  skip_on_cran()
  skip_if_offline()

  f <- file.path(tempdir(), ".gitignore")
  unlist(f)
  file.create(f)

  expect_invisible(
    gi_fetch_templates(
      "R",
      copy_to_clipboard = FALSE,
      append_gitignore = TRUE,
      gitignore_file = f
    )
  )

  unlink(f)
})
