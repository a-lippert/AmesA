test_that("SAi() calculates surface area of I-shaped palisade mesophyll cell", {
  expect_equal(SAi(18.04,34.65), 1963.7656)
})

test_that("Vi() calculates volume of I-shaped palisade mesophyll cell", {
  expect_equal(Vi(18.04,34.65), 7319.5674)
})
