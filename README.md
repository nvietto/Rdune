
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Rdune <img src="man/figures/logo.jpg" align="right" width="120" />

<!-- badges: start -->

[![R-CMD-check](https://github.com/nvietto/Rdune/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/nvietto/Rdune/actions/workflows/R-CMD-check.yaml)
[![CRAN
status](https://www.r-pkg.org/badges/version/Rdune)](https://CRAN.R-project.org/package=Rdune)
[![](https://cranlogs.r-pkg.org/badges/grand-total/Rdune)](https://cran.r-project.org/package=Rdune)
<!-- badges: end -->

The {Rdune} package offers a collection of color palettes inspired by
‘Dune’, designed for use in data visualizations and graphics with
{ggplot2}.

The structure of the code and creative inspiration were drawn from the
[{PrettyCols}](https://github.com/nrennie/PrettyCols),
[{wesanderson}](https://github.com/karthik/wesanderson),
[{MetBrewer}](https://github.com/BlakeRMills/MetBrewer),
[{PNWColors}](https://github.com/jakelawlor/PNWColors) packages.

Colors were selected using
[{eyedroppeR}](https://github.com/doehm/eyedroppeR).

See <https://nvietto.github.io/Rdune/> for full documentation.

## Installation

{Rdune} is available on CRAN. Install using:

``` r
install.packages("Rdune")
```

Or you can install the development version of Rdune from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("nvietto/Rdune")
```

## How to use

``` r
library(Rdune)

# See all palettes
names(dune_palettes)
#>  [1] "arrakis"                   "atreides"                 
#>  [3] "atreides2"                 "atreides3"                
#>  [5] "atreides4"                 "bene_gesserit"            
#>  [7] "corrino"                   "fermen"                   
#>  [9] "fermen2"                   "harkonnen"                
#> [11] "harkonnen2"                "harkonnen3"               
#> [13] "harkonnen4"                "maythyknifechipandshatter"
#> [15] "sandworm"
```

## View palette

``` r
pal <- dune_palette("atreides")

print.palette(pal)
```

<img src="man/figures/README-unnamed-chunk-2-1.png" width="100%" />

## Examples

### “May thy knife chip and shatter”

<p align="center">
<img src="man/figures/maythyknifechipandshatter.jpg" height="300" >
</p>

``` r
library(ggplot2)

ggplot(
  data = iris,
  mapping = aes(x = Sepal.Width, y = Sepal.Length, color = Species)
) +
  geom_point(size = 2) +
  scale_color_dune_d(name = "maythyknifechipandshatter")
```

<img src="man/figures/README-example1-1.png" width="100%" />

### House Atreides

<p align="center">
<img src="man/figures/Atreides3.jpg" height="300" >
</p>

``` r
library(ggplot2)

ggplot(
  data.frame(x = rnorm(1000), y = rnorm(1000)),
  aes(x = x, y = y)
) +
  geom_hex() +
  theme_minimal() +
  scale_fill_dune_c(name = "atreides3") +
  labs(x = "X-axis", y = "Y-axis", fill = "Legend")
```

<img src="man/figures/README-example2-1.png" width="100%" />

## Palettes

### Arrakis

<p align="center">
<img src="man/figures/Arrakis.jpg" height="300" >
</p>

### House Atreides

<p align="center">
<img src="man/figures/Atreides.jpg" height="300">
</p>
<p align="center">
<img src="man/figures/Atreides2.jpg" height="300">
</p>
<p align="center">
<img src="man/figures/Atreides3.jpg" height="300">
</p>
<p align="center">
<img src="man/figures/Atreides4.jpg" height="300">
</p>

### Bene Gesserit

<p align="center">
<img src="man/figures/bene_gesserit.jpg" height="300">
</p>

### House Corrino

<p align="center">
<img src="man/figures/corrino.jpg" height="300" >
</p>

### Fremen

<p align="center">
<img src="man/figures/fermen.jpg" height="300" >
</p>
<p align="center">
<img src="man/figures/fermen2.jpg" height="300" >
</p>

### House Harkonnen

<p align="center">
<img src="man/figures/harkonnen.jpg" height="300" >
</p>
<p align="center">
<img src="man/figures/harkonnen2.jpg" height="300" >
</p>
<p align="center">
<img src="man/figures/harkonnen3.jpg" height="300" >
</p>
<p align="center">
<img src="man/figures/harkonnen4.jpg" height="300" >
</p>

### “May thy knife chip and shatter”

<p align="center">
<img src="man/figures/maythyknifechipandshatter.jpg" height="300" >
</p>

### Sandworm

<p align="center">
<img src="man/figures/sandworm.jpg" height="300" >
</p>
