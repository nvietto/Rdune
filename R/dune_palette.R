#' Creates color palettes inspired by "Dune"
#'
#' @param name Name of palette. Run \code{names(dune_palettes)} to view options.
#' @param n Number of desired colors: If the requested number of colors exceeds the available palette,
#'  additional colors will be automatically interpolated. If the number of colors (n) is not specified,
#'  the default length of the palette will be used.
#' @param type Specify either "continuous" or "discrete".
#'  Use "continuous" if you want to automatically interpolate between colors.
#' @return A vector of colors.
#' @examples
#' dune_palette("arrakis")
#' @export
dune_palette <- function(name, n, type = c("discrete", "continuous")) {
  type <- match.arg(type)

  if (!(type %in% c("discrete", "continuous"))) {
    stop("Invalid palette type. Please choose either discrete or continuous.")
  }

  cols <- dune_palettes[[name]]
  if (is.null(cols)) {
    stop("Palette name not found. Please provide a valid palette name or check the spelling.")
  }

  if (missing(n)) {
    n <- length(cols)
  }

  if (type == "discrete" && n > length(cols)) {
    stop("The requested number of colors exceeds the available colors in the discrete palette. Consider using continuous instead.")
  }

  out <- switch(type,
                grDevices::colorRampPalette(cols)(n),
                discrete = cols[1:n]
  )
  structure(out, class = "palette", name = name)
}

