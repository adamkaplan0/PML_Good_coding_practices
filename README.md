# PML Workshop on "Good" Coding Practices for Social Scientists

This repository is supposed to mimic a research project containing an analysis, simulation, and report written in RMarkdown.

## Purpose
There are three key takeaways that this repository is hoping to showcase:
1. Annotation: All of the code files (except `analysis/analysis_UGLY.R`) are commented and structured according to the advice given in the workshop.
2. Organization: The whole repository tries to follow the advice as well.
3. Replicability: Finally, by including `renv` into the project, I also hope to show how easy it is to reproduce the project environment with very little space/time.

## Organization

* The `analysis` folder contains the clean-coded `analysis.R` and exemplary ugly-coded `analysis_UGLY.R` files, which run a linear regression of the simulated data and save a regression table and predicted value plots for the report.
* The `data` folder contains the `.csv` simulated data.
* The `report` folder contains all the figures, tables, and `.Rmd` report file, compiling them together into a final PDF.
* The `simulation` folder contains a `.R` script that creates the simulated data used in the analysis.
* The `renv` folder and related files ought not to be modified and are included for replicability purposes. To see how `renv` works check out [Introduction to renv](https://rstudio.github.io/renv/articles/renv.html).
