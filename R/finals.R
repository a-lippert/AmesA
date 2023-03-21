#' Estimate airspace fraction for each type of mesophyll tissue
#'
#' @param AA number representing the area of air space within an area of a specific type of mesophyll tissue (eg. spongey mesophyll tissue)
#' @param MA number representing the area of a section of a specific type of mesophyll tissue (eg. spongey mesophyll tissue)
#'
#' @return number
#' @export
#'
#' @examples
#' AA<-5981.198 #measured airspace area of spongey mesophyll tissue chunk
#' MA<-17704.312 #measured area of spongey mesophyll tissue chunk (contains measured airspace area AA and unmeasured area of cells in tissue chunk)
#' ASF(AA,MA)
ASF<-function(AA, MA){
  AA/MA
}

#' Estimate mesophyll surface area to leaf area ratio for each type of mesophyll tissue. To estimate total surface area of mesophyll per leaf area, sum the results of AmesA function for each tissue type.
#'
#' @param SA number representing the surface area of a mesophyll cell from a specific cell type (eg. spongey mesophyll cell). generated from one of the package's SA functions
#' @param Tt number representing the thickness of a mesophyll tissue (eg. thickness of spongey mesophyll). measured
#' @param ASF number representing air space fraction for specific mesophyll tissue. estimated by package's ASF function
#' @param V number representing volume of specific mesophyll tissue. generated from one of the package's V functions
#'
#' @return number
#' @export
#'
#' @examples
#' SA<-685979.3 #spongey mesophyll cell surface area calculated by SAsponge (um^2)
#' Tt<-126.034 #spongey mesophyll tissue thickness, measured (um)
#' ASF<-0.3378385 #spongey mesophyll airspace fraction calculated by ASF
#' V<-53424483 #spongey mesophyll cell volume calculated by Vsponge (um^3)
#' AmesA(SA,Tt,ASF,V)
AmesA<-function(SA, Tt, ASF, V){
  SA*(Tt*(1-ASF))/V
}
