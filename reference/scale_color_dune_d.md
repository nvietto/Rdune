# Dune palettes for plotting with 'ggplot2'

Dune palettes for plotting with 'ggplot2'

## Usage

``` r
scale_color_dune_d(name, ...)
```

## Arguments

- name:

  Name of palette. Run `names(dune_palettes)` to view options

- ...:

  Other arguments passed on to
  [`discrete_scale`](https://ggplot2.tidyverse.org/reference/discrete_scale.html)

## Value

An object defining a discrete color scale for use with 'ggplot2'.

## Examples

``` r
library(ggplot2)
ggplot(data = mtcars, aes(x = mpg, y = disp, color = factor(cyl))) +
  geom_point() +
  scale_color_dune_d("harkonnen4")
```
