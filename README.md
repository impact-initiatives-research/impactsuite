## IMPACT R packages Suite

A meta package including all IMPACT Initiative standard R packages; similar to the "tidyverse" package, this will load all packages from the impact suite.

this package has all main packages developed by IMPACT Initiatives as a dependency, so you can install this to install all IMPACT packages:

```
devtools::install_github("impact-initiatives-research/impactsuite", build_vignettes = TRUE)
```

Similar, instead of loading these packages individually, you can load them at once with:

```
library(impactsuite)
```

## Included Packages

The suite contains the following packages:

- stable and in use:
    - [msni19](https://github.com/impact-initiatives-research/msni19)
    - [hypegrammaR](https://github.com/impact-initiatives-research/hypegrammaR)
    - [Setviz](https://github.com/impact-initiatives-research/Setviz)
    - [surveyweights](https://github.com/impact-initiatives-research/surveyweights)
    - [questionnaireHTML](https://github.com/impact-initiatives-research/questionnaireHTML)
    - [koboquest](https://github.com/impact-initiatives-research/koboquest)
    - [xlsformfill](https://github.com/impact-initiatives-research/xlsformfill)
    - [cleaninginspectoR](https://github.com/impact-initiatives-research/cleaninginspectoR)
    - [kobostandards](https://github.com/impact-initiatives-research/kobostandards)
    - [composr](https://github.com/impact-initiatives-research/composr)
    - [mergekobodata](https://github.com/impact-initiatives-research/mergekobodata)
    - [visualisationIMPACT](https://github.com/impact-initiatives-research/visualisationIMPACT)
- experimental:
    - [odktidy](https://github.com/impact-initiatives-research/odktidy)
    - [clog](https://github.com/impact-initiatives-research/clog)
- HQ use only:
    - [researchcyclematrix](https://github.com/impact-initiatives-research/researchcyclematrix)




## Package documentation

- [Full reference manual pdfs for all IMPACT packages](https://github.com/impact-initiatives-research/impactsuite/tree/master/inst) can be found in the `./inst` directory of this repository.
    - [msni19 reference manual](https://github.com/impact-initiatives-research/impactsuite/raw/master/inst/msni19_0.1.0.pdf)
    - [hypegrammaR  reference manual](https://github.com/impact-initiatives-research/impactsuite/raw/master/inst/hypegrammaR_0.2.2.pdf)
    - [Setviz reference manual](https://github.com/impact-initiatives-research/impactsuite/raw/master/inst/Setviz_0.1.0.pdf)
    - [surveyweights reference manual](https://github.com/impact-initiatives-research/impactsuite/raw/master/inst/surveyweights_0.2.0.pdf)
    - [questionnaireHTML reference manual](https://github.com/impact-initiatives-research/impactsuite/raw/master/inst/character(0))
    - [koboquest reference manual](https://github.com/impact-initiatives-research/impactsuite/raw/master/inst/koboquest_1.0.1.pdf)
    - [xlsformfill reference manual](https://github.com/impact-initiatives-research/impactsuite/raw/master/inst/xlsformfill_0.1.0.pdf)
    - [cleaninginspectoR reference manual](https://github.com/impact-initiatives-research/impactsuite/raw/master/inst/cleaninginspectoR_0.0.0.9000.pdf)
    - [kobostandards reference manual](https://github.com/impact-initiatives-research/impactsuite/raw/master/inst/kobostandards_0.1.0.9000.pdf)
    - [composr reference manual](https://github.com/impact-initiatives-research/impactsuite/raw/master/inst/composr_0.1.1.pdf)
    - [mergekobodata reference manual](https://github.com/impact-initiatives-research/impactsuite/raw/master/inst/mergekobodata_0.1.0.9000.pdf)
    - [visualisationIMPACT reference manual](https://github.com/impact-initiatives-research/impactsuite/raw/master/inst/visualisationIMPACT_0.1.0.pdf)
    - [odktidy reference manual](https://github.com/impact-initiatives-research/impactsuite/raw/master/inst/odktidy_0.1.0.pdf)
    - [clog reference manual](https://github.com/impact-initiatives-research/impactsuite/raw/master/inst/clog_0.1.0.pdf)
    - [researchcyclematrix reference manual](https://github.com/impact-initiatives-research/impactsuite/raw/master/inst/researchcyclematrix_0.2.3.pdf)


## Impactsuite functions

This meta package has a number of functions to organise the impact suite packages:

- `impactsuite_packages()`: get list of package names / repositories / urls
- `impactsuite_browse_vignettes()`: open vignettes / tutorials for all IMPACT packages
- `impactsuite_install()`: install/update all IMPACT suite packages from github; builds vignettes by default
- `impactsuite_clone()`: clone all repositories for impact packages
- `impactsuite_build_manuals()` build reference manual pdfs from cloned repositories


## Don't use impactsuite as a dependency

you should _not_ use the impactsuite package as a dependency for your packages; instead, add dependencies to the particular packages you are using within the impactsuite.

