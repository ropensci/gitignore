test_that("gi_available_templates works", {
  templates <- gi_available_templates()

  expect_true(inherits(templates, "character"))
  expect_true(is.vector(templates))
  expect_true("r" %in% templates)
})
