#' Scatterplot matrix tour path animation.
#'
#' Animate a nD tour path with a scatterplot matrix. 
#'
#' The lines show the observations, and the points, the values of the 
#' projection matrix.
#'
#' @param data matrix, or data frame containing numeric columns
#' @param tour_path tour path generator, defaults to the grand tour
#' @param d number of target dimensions
#' @param ... other arguments passed on to \code{\link{animate}}
#' @seealso \code{\link{animate}} for options that apply to all animations
#' @keywords hplot
#' @examples
#' animate_scatmat(flea[, 1:6], grand_tour(2))
#' animate_scatmat(flea[, 1:6], grand_tour(6))
animate_scatmat <- function(data, tour_path = grand_tour(3), ...) {
  render_data <- function(data, proj, geodesic) {
    pairs(data %*% proj, pch = 20)
  }

  animate(data, tour_path, render_data = render_data, ...)
}