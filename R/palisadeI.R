#' Estimate surface area of palisade mesophyll cell in tissue dominated by I-shaped cells
#'
#' @param Di numerical value representing the diameter of the I-shaped (aka cylindrical) palisade mesophyll cell (or average thereof)
#' @param Hi numerical value representing height (or average)of the I-shaped palisade mesophyll cell. should be measured from same cell(s) as Di
#'
#' @return a number
#' @export
#'
#' @examples
#' Di<-mean(18.04, 18.67, 17.19)
#' Hi<-mean(34.65, 37.48, 29.90)
#' SAi(Di, Hi)
#'
SAi<-function(Di, Hi){
  2*pi*(Di/2)*Hi
}

#' Estimate volume of palisade mesophyll cell in tissue dominated by I-shaped cells
#'
#' @param Di numerical value representing diameter (or average) of the I-shaped palisade mesophyll cell
#' @param Hi numerical value representing height (or average) of the I-shaped palisade mesophyll cell. should be measured from same cell(s) as Di
#'
#' @return number
#' @export
#'
#' @examples
#' Di<-mean(18.04, 18.67, 17.19)
#' Hi<-mean(34.65, 37.48, 29.90)
#' Vi(Di, Hi)
Vi<-function(Di, Hi){
  pi*(Di/2)^2*(4/3*(Di/2)+Hi-Di)
}
