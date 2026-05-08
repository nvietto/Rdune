# Dune palettes for plotting with 'ggplot2'

Dune palettes for plotting with 'ggplot2'

## Usage

``` r
scale_fill_dune_c(name, ...)
```

## Arguments

- name:

  Name of palette. Run `names(dune_palettes)` to view options

- ...:

  Other arguments passed on to
  [`scale_fill_gradientn`](https://ggplot2.tidyverse.org/reference/scale_gradient.html)

## Value

An object defining a continuous fill scale for use with 'ggplot2'.

## Examples

``` r
library(ggplot2)
ggplot(data = mtcars, aes(x = mpg, y = disp, fill = wt)) +
  geom_point() +
  scale_fill_dune_c("fermen2")
```
