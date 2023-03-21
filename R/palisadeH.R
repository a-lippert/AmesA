#' Estimate surface area of palisade mesophyll cell in tissue dominated by H-shaped cells
#'
#' @param Dc numerical value representing the diameter (or mean) of the central cylinder of the H-shaped palisade mesophyll cell
#' @param Hc numerical value representing the height (or mean) of the central cylinder of the H-shaped palisade mesophyll cell
#' @param Ds numerical value representing the diameter (or mean) of one side cylinder of the H-shaped palisade mesophyll cell
#' @param Hs numerical value representing the height (or mean) of one side cylinder of the H-shaped palisade mesophyll cell
#' @param j numerical value representing the total number of arms (aka side cylinders) in the palisade mesophyll H cell
#'
#' @return number
#' @export
#'
#' @examples
#' Ds<-mean(18.04, 18.67, 17.19)
#' Hs<-mean(34.65, 37.48, 29.90)
#' Dc<-mean(13.55, 17.91, 21.12)
#' Hc<-mean(38.71, 49.27, 41.85)
#' j<-2
#' SAh(Dc,Hc,Ds,Hs, j)
SAh<-function(Dc, Hc, Ds, Hs, j){
  2*pi*(Dc/2)*((Dc/2)+Hc)+
    j*(2*pi*(Ds/2)*Hs)+
    3*pi*(Ds/2)^2-
    2*pi*(Ds/2)^2
}

#' Estimate volume of palisade mesophyll cell in tissue dominated by H-shaped cells
#'
#' @param Dc numerical value representing the diameter (or mean) of the central cylinder of the H-shaped palisade mesophyll cell
#' @param Hc numerical value representing the height (or mean) of the central cylinder of the H-shaped palisade mesophyll cell
#' @param Ds numerical value representing the diameter (or mean) of one side cylinder of the H-shaped palisade mesophyll cell
#' @param Hs numerical value representing the height (or mean) of one side cylinder of the H-shaped palisade mesophyll cell
#' @param j numerical value representing the total number of arms (aka side cylinders) in the palisade mesophyll H cell
#'
#' @return number
#' @export
#'
#' @examples
#' Ds<-mean(18.04, 18.67, 17.19)
#' Hs<-mean(34.65, 37.48, 29.90)
#' Dc<-mean(13.55, 17.91, 21.12)
#' Hc<-mean(38.71, 49.27, 41.85)
#' j<-2
#' Vh(Dc,Hc,Ds,Hs,j)
Vh<-function(Dc, Hc, Ds, Hs, j){
  pi*(Dc/2)^2*Hc+
    j*(pi*(Ds/2)^2*Hs+
         2/3*pi*(Ds/2)^3)
}

