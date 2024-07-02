#' Dune palettes for plotting with ggplot2
#'
#' @param name Name of palette. Run \code{names(dune_palettes)} to view options
#' @param ... Other arguments passed on to \code{\link[ggplot2]{scale_fill_gradientn}}
#' @return An object defining a continuous fill scale for use with ggplot2.
#' @import ggplot2
#' @examples
#' library(ggplot2)
#' ggplot(data = mtcars, aes(x = mpg, y = disp, fill = wt)) +
#' geom_point() +
#' scale_fill_dune_c("sardaukar")
#' @export
scale_fill_dune_c <- function(name,  ...) {

  palette_choice <- dune_palettes[[name]]

  if (missing(name)) {
    stop("Palette name not found. Please provide a valid palette name or check the spelling.")
  }

  if (is.null(palette_choice) || is.numeric(name)) {
    stop("Palette does not exist.")
  }

  ggplot2::scale_fill_gradientn(
    colors = dune_palette(name = name),
    ...
  )
}

