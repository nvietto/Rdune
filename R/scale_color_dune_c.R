
scale_color_dune_c <- function(name,  ...) {

  if (missing(name)) {
    stop("Palette name not found. Please provide a valid palette name or check the spelling.")
  }

  ggplot2::scale_color_gradientn(
    colors = dune_palette(name = name),
    ...
    )
}
