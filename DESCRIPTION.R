Package: Friedman
Type: Package
Title: Tools for Cleaning, Summarizing, and Visualizing Survey and Experimental Data
Version: 0.1.0
Author: Olivia Pikul
Maintainer: Olivia Pikul <your_email@example.com>
Description: Friedman provides simple and efficient functions for cleaning messy datasets, 
    generating descriptive statistics, and producing publication-quality visualizations. 
    The package supports common tasks used by students, researchers, and data analysts, 
    including missing-value handling, grouped comparisons, summary plotting, and exporting 
    cleaned files. Includes both S3 and S4 class implementations for structured data handling.
License: MIT + file LICENSE
Encoding: UTF-8
LazyData: true
Roxygen: list(markdown = TRUE)
RoxygenNote: 7.3.2
Imports:
    ggplot2,
    dplyr,
    tidyr,
    readr,
    openxlsx,
    methods
Suggests:
    knitr,
    rmarkdown,
    testthat (>= 3.0.0)
VignetteBuilder: knitr
