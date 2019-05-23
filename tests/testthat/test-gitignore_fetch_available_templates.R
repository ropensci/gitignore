# test_that("wrong url for the template breaks the code", {
#   expect_error(
#     gi_fetch_available_templates(
#       url = "https://www.gitignoreeee.io/api/list?format=json"
#     )
#   )
# })