
<!-- README.md is generated from README.Rmd. Please edit that file -->

# AmesA

<!-- badges: start -->
<!-- badges: end -->

The goal of AmesA is to summarize measured plant anatomical data and use
it to estimate the surface area and volume of common types of mesophyll
cells, the mesophyll airspace fraction, and the mesophyll surface area
per leaf area.

## Installation

You can install the development version of AmesA from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("a-lippert/AmesA")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(AmesA)
Di<-18.041
Hi<-34.654
SAi(Di,Hi)
#> [1] 1964.101
```

Suggested data structure: EASF=estimated airspace fraction; LT=leaf
thickness; ET=epidermal thickness; MT=mesophyll thickness; SA=area of
chunk of spongey mesophyll tissue; IAS=total area of intracellular
airspace within above chunk of spongey mesophyll tissue
