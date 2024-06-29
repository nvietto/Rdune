
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Rdune

The {Rdune} package offers a collection of color palettes inspired by
“Dune,” designed for use in data visualization and graphics.

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
#>  [7] "fermen"                     "harkonnen"                 
#>  [9] "harkonnen2"                 "harkonnen3"                
#> [11] "harkonnen_4"                "maythyknifechipandshatter" 
#> [13] "maythyknifechipandshatter2" "sandworm"                  
#> [15] "sardaukar"                  "whatsinthebox"
```

### “May thy knife chip and shatter”

<p align="center">
<img src="figure/maythyknifechipandshatter.png" height="300" alt="Description of image">
</p>

``` r
library(ggplot2)

ggplot(data = iris,
    mapping = aes(x = Sepal.Width, y = Sepal.Length, color = Species)) + 
    geom_point(size = 2) + 
    scale_color_dune_d(name = "maythyknifechipandshatter")
```

<img src="man/figures/README-unnamed-chunk-2-1.png" width="100%" />

## Palettes

### Arrakis

<p align="center">
<img src="figure/Arrakis.png" height="300" alt="Description of image">
</p>

### House Atreides

<p align="center">
<img src="figure/Atreides.png" height="300" alt="Description of image">
</p>
<p align="center">
<img src="figure/Atreides2.png" height="300" alt="Description of image">
</p>
<p align="center">
<img src="figure/Atreides3.png" height="300" alt="Description of image">
</p>

### Bene Gesserit

<p align="center">
<img src="figure/bene_gesserit.png" height="300" alt="Description of image">
</p>

### House Corrino

<p align="center">
<img src="figure/corrino.png" height="300" alt="Description of image">
</p>

### Fremen

<p align="center">
<img src="figure/fermen.png" height="300" alt="Description of image">
</p>
<p align="center">
<img src="figure/fermen2.png" height="300" alt="Description of image">
</p>

### House Harkonnen

<p align="center">
<img src="figure/harkonnen.png" height="300" alt="Description of image">
</p>
<p align="center">
<img src="figure/harkonnen2.png" height="300" alt="Description of image">
</p>
<p align="center">
<img src="figure/harkonnen3.png" height="300" alt="Description of image">
</p>
<p align="center">
<img src="figure/harkonnen4.png" height="300" alt="Description of image">
</p>

### “May thy knife chip and shatter”

<p align="center">
<img src="figure/maythyknifechipandshatter.png" height="300" alt="Description of image">
</p>
<p align="center">
<img src="figure/maythyknifechipandshatter2.png" height="300" alt="Description of image">
</p>

### Sandworm

<p align="center">
<img src="figure/sandworm.png" height="300" alt="Description of image">
</p>

### Sardaukar

<p align="center">
<img src="figure/sardaukar.png" height="300" alt="Description of image">
</p>

### “What is in the box?”

<p align="center">
<img src="figure/whatsinthebox.png" height="300" alt="Description of image">
</p>
