test_that("SAsponge() calculates spongey mesophyll cell surface area", {
  expect_equal(SAsponge(153.533), 730891.8)
})
test_that("Vsponge() calculates spongey mesophyll cell volume", {
  expect_equal(Vsponge(153.533),58756166)
})
