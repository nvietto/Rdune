

scale_color_dune_d <- function(name,  ...) {

  if (missing(name)) {
    stop("Palette name not found. Please provide a valid palette name or check the spelling.")
  }

  ggplot2::discrete_scale(aesthetics = "colour",
                          palette = function(n) dune_palette(name = name, n = n),
                          ...)
}





