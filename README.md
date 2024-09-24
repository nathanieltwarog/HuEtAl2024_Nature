# Hu et al., 2024 - Nature

This readme provides a brief description of replicating an example of
the analysis included in the 2025 Nature paper by Hu et al. using a
development version of the `rtmsEcho` package.

### Package Installation

Ensure that R or RStudio is installed. The included example script
requires three packages. The first two, `tidyverse` and `rtms` are
available from CRAN and can be installed with the following command in
R:

``` r
install.packages(c("tidyverse","rtms"))
```

The third package is `rtmsEcho`. This example analysis was run using v0.1.1 of the package, which can be
found at the `rtmsEcho` GitHub repository
[here](https://github.com/nathanieltwarog/rtmsEcho). Once the source
package “rtmsEcho_0.1.1.tar.gz” is dowloaded, navigate to the directory
containing it and install the source package with the following command:

``` r
install.packages("rtmsEcho_0.1.1.tar.gz",type="source",repos=NULL)
```

The three requisite packages should now be installed.

## Running the example

The included example R script reads the necessary intensity data out of
the included .wiff and .wiff.scan files, producing the given output. To
replicate the example you will need the following three files saved to
your working directory:

- example.wiff
- example.wiff.scan
- example.R

It can be run from the R console using `source("example.R")`, or using one
of several source options in RStudio. Once it is run, the contents of
the resulting `"output.txt"` file can be copied into the included example
Excel file for reformatting, normalization, and visualization.
