# Dune palettes for plotting with 'ggplot2'

Dune palettes for plotting with 'ggplot2'

## Usage

``` r
scale_color_dune_c(name, ...)
```

## Arguments

- name:

  Name of palette. Run `names(dune_palettes)` to view options

- ...:

  Other arguments passed on to
  [`scale_color_gradientn`](https://ggplot2.tidyverse.org/reference/scale_gradient.html)

## Value

An object defining a continuous color scale for use with 'ggplot2'.

## Examples

``` r
library(ggplot2)
ggplot(data = mtcars, aes(x = mpg, y = disp, color = hp)) +
  geom_point() +
  scale_color_dune_c("atreides3")
```
