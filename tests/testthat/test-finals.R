test_that("ASF()estimates air space fraction for mesophyll tissue", {
  expect_equal(ASF(5981.198,17704.312), 0.33783849)
})

test_that("AmesA()estimates mesophyll area per leaf area for mesophyll tissue", {
  expect_equal(AmesA(685979.3,126.034,0.3378,53424483), 1.0716367)
})
