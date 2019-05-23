test_that("no change in the gitignore file", {
  f <- tempfile(pattern = "", fileext = ".gitignore")
  file.create(f)

  new_lines <- gi_fetch_ignore_templates("r")

  # Write once
  gi_write_gitignore(new_lines, f)

  # The second time it should not write anything
  expect_false(gi_write_gitignore(new_lines, f))
})
