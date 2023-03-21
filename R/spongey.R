#' Estimate surface area of spongey mesophyll cell
#'
#' @param Ps Perimeter of spongey mesophyll cell (numerical) or average perimeter of cells
#'
#' @return A number
#' @export
#'
#' @examples
#' Ps<-mean(153.533, 184.481, 206.374)
#' SAsponge(Ps)
#'
SAsponge<-function(Ps){
  4*pi*(Ps/2*pi)^2
}

#' Estimate volume of spongey mesophyll cell
#'
#' @param Ps Perimeter of spongey mesophyll cell (numerical) or average perimeter of cells
#'
#' @return A number
#' @export
#'
#' @examples
#' Ps<-mean(153.533, 184.481, 206.374)
#' Vsponge(Ps)
Vsponge<-function(Ps){
  4/3*pi*(Ps/2*pi)^3
}
#figure out how to commit via github
