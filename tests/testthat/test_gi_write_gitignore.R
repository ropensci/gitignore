test_that("no change in the gitignore file", {
  skip_if_offline()

  f <- file.path(tempdir(), ".gitignore")
  file.create(f)

  new_lines <- gi_fetch_templates("r")

  # Write once
  gi_write_gitignore(new_lines, f)

  # The second time it should not write anything
  expect_false(gi_write_gitignore(new_lines, f))

  unlink(f)
})

test_that(".gitignore file can not be found", {
  skip_if_offline()

  f <- file.path(tempdir(), ".gitignore")
  unlink(f)

  new_lines <- gi_fetch_templates("r")

  expect_error(gi_write_gitignore(new_lines, f))

  unlink(f)
})

# That would be nice to test, but seems difficult with testthat because of: "menu() cannot be used non-interactively" error

# test_that("A non existing .gitignore file can be created", {
#
#   f <- tempfile(pattern = "", fileext = ".gitignore")
#
#   template <- gi_fetch_templates("R", copy_to_clipboard = FALSE)
#
#   expect_true(gi_write_gitignore(template, f))
#
#   unlink(f)
# })