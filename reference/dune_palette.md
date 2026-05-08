# Creates color palettes inspired by 'Dune'

Creates color palettes inspired by 'Dune'

## Usage

``` r
dune_palette(name, n, type = c("discrete", "continuous"))
```

## Arguments

- name:

  Name of palette. Run `names(dune_palettes)` to view options.

- n:

  Number of desired colors: If the requested number of colors exceeds
  the available palette, additional colors will be automatically
  interpolated. If the number of colors (n) is not specified, the
  default length of the palette will be used.

- type:

  Specify either "continuous" or "discrete". Use "continuous" if you
  want to automatically interpolate between colors.

## Value

A vector of colors.
