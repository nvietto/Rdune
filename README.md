
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Rdune <img src="man/figures/logo.png" align="right" width="120" />

The {Rdune} package offers a collection of color palettes inspired by
“Dune,” designed for use in data visualizations and graphics with
{ggplot2}.

The structure of the code and creative inspiration were drawn from the
[{PrettyCols}](https://github.com/nrennie/PrettyCols),
[{wesanderson}](https://github.com/karthik/wesanderson),
[{MetBrewer}](https://github.com/BlakeRMills/MetBrewer),
[{PNWColors}](https://github.com/jakelawlor/PNWColors) packages.

Colors were selected using
[{eyedroppeR}](https://github.com/doehm/eyedroppeR).

## Installation

You can install the development version of Rdune from
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
#>  [1] "arrakis"                    "atreides"                  
#>  [3] "atreides2"                  "atreides3"                 
#>  [5] "bene_gesserit"              "corrino"                   
#>  [7] "fermen"                     "fermen2"                   
#>  [9] "harkonnen"                  "harkonnen2"                
#> [11] "harkonnen3"                 "harkonnen4"                
#> [13] "maythyknifechipandshatter"  "maythyknifechipandshatter2"
#> [15] "sandworm"                   "sardaukar"                 
#> [17] "whatsinthebox"
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
<img src="man/figures/maythyknifechipandshatter.png" height="300" alt="Description of image">
</p>

``` r
library(ggplot2)

ggplot(data = iris,
    mapping = aes(x = Sepal.Width, y = Sepal.Length, color = Species)) + 
    geom_point(size = 2) + 
    scale_color_dune_d(name = "maythyknifechipandshatter")
```

<img src="man/figures/README-example1-1.png" width="100%" />

### House Atreides

<p align="center">
<img src="man/figures/Atreides3.png" height="300" alt="Description of image">
</p>

``` r
library(ggplot2)

ggplot(data.frame(x = rnorm(10000), y = rnorm(10000)),
       aes(x = x, y = y)) +
  geom_hex() + 
  theme_minimal() +
  scale_fill_dune_c(name = "atreides3") +
  labs(x = "X-axis Label", y = "Y-axis Label", fill = "Legend")
```

<img src="man/figures/README-example2-1.png" width="100%" />

## Palettes

### Arrakis

<p align="center">
<img src="man/figures/Arrakis.png" height="300" alt="Description of image">
</p>

### House Atreides

<p align="center">
<img src="man/figures/Atreides.png" height="300" alt="Description of image">
</p>
<p align="center">
<img src="man/figures/Atreides2.png" height="300" alt="Description of image">
</p>
<p align="center">
<img src="man/figures/Atreides3.png" height="300" alt="Description of image">
</p>

### Bene Gesserit

<p align="center">
<img src="man/figures/bene_gesserit.png" height="300" alt="Description of image">
</p>

### House Corrino

<p align="center">
<img src="man/figures/corrino.png" height="300" alt="Description of image">
</p>

### Fremen

<p align="center">
<img src="man/figures/fermen.png" height="300" alt="Description of image">
</p>
<p align="center">
<img src="man/figures/fermen2.png" height="300" alt="Description of image">
</p>

### House Harkonnen

<p align="center">
<img src="man/figures/harkonnen.png" height="300" alt="Description of image">
</p>
<p align="center">
<img src="man/figures/harkonnen2.png" height="300" alt="Description of image">
</p>
<p align="center">
<img src="man/figures/harkonnen3.png" height="300" alt="Description of image">
</p>
<p align="center">
<img src="man/figures/harkonnen4.png" height="300" alt="Description of image">
</p>

### “May thy knife chip and shatter”

<p align="center">
<img src="man/figures/maythyknifechipandshatter.png" height="300" alt="Description of image">
</p>
<p align="center">
<img src="man/figures/maythyknifechipandshatter2.png" height="300" alt="Description of image">
</p>

### Sandworm

<p align="center">
<img src="man/figures/sandworm.png" height="300" alt="Description of image">
</p>

### Sardaukar

<p align="center">
<img src="man/figures/sardaukar.png" height="300" alt="Description of image">
</p>

### “What is in the box?”

<p align="center">
<img src="man/figures/whatsinthebox.png" height="300" alt="Description of image">
</p>
