test_that("no change in the gitignore file", {
  f <- tempfile(pattern = "", fileext = ".gitignore")
  file.create(f)

  new_lines <- gi_fetch_ignore_templates("r")

  # Write once
  gi_write_gitignore(new_lines, f)

  # The second time it should not write anything
  expect_false(gi_write_gitignore(new_lines, f))
})

test_that(".gitignore file can not be found", {
  f <- tempfile(pattern = "", fileext = ".gitignore")

  new_lines <- gi_fetch_ignore_templates("r")

  # Write once
  expect_error(gi_write_gitignore(new_lines, f))


})