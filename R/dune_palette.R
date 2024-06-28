#' Title
#'
#' @param name
#' @param n
#' @param type
#'
#' @return
#' @export
#'
#' @examples
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

