# wayback

## Overview

`wayback` works like a virtual CRAN snapshot for source packages.
It automatically downloads `tar.gz` files with dependencies,
all of which were available on a specified day. It also creates
an R script file to install downloaded packages locally.

## Install

```
devtools::install_github("r-suzuki/wayback")
```

## Example
To collect `ranger` package and it's dependent packages on the date `2023-03-01`:

```
wayback::collect(pkgs = "ranger", date = "2023-03-01", outdir = "outdir")
```

It downloads the source `tar.gz` files which were available on the day.
Here is an excerpt from the log file:

```
  package                 file       date    type
1    Rcpp   Rcpp_1.0.10.tar.gz 2023-01-22 archive
2  ranger ranger_0.14.1.tar.gz 2022-06-18 archive
```

It also creates an R script named `install.R`:

```
# virtual snapshot on 2023-03-01 for ranger
install.packages("Rcpp_1.0.10.tar.gz", repos = NULL, type = "source")
install.packages("ranger_0.14.1.tar.gz", repos = NULL, type = "source")
```

You can install all the packages with this script.
