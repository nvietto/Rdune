#' Dune palettes for plotting with ggplot2
#'
#' @param name Name of palette. Run \code{names(dune_palettes)} to view options
#' @param ... Other arguments passed on to \code{\link[ggplot2]{discrete_scale}}
#' @return  An object defining a discrete fill scale for use with ggplot2.
#' @import ggplot2
#' @examples
#' library(ggplot2)
#' ggplot(data = mtcars, aes(x = mpg, y = disp, fill = factor(cyl))) +
#' geom_point() +
#' scale_fill_dune_d("harkonnen_4")
#' @export
scale_fill_dune_d <- function(name,  ...) {

  if (missing(name)) {
    stop("Palette name not found. Please provide a valid palette name or check the spelling.")
  }

  palette_choice <- dune_palettes[[name]]

  if (is.null(palette_choice) || is.numeric(name)) {
    stop("Palette does not exist.")
  }

  ggplot2::discrete_scale(aesthetics = "fill",
                          palette = function(n) dune_palette(name = name, n = n),
                          ...)
}





