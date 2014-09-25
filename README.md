# tutoR (outline)

---------------------

Format? Handouts?

---------------------

## 2-3 examples where scripting saves massive time/effort/errors
  * Scraping data from the web
  * Analyzing multiple Excel data sets the same way (with plots)

## Why R?
  * It's what your colleagues use
  * packages to do stuff you want
  * interfaces with everything else
  * share code with colleagues
  * It's free
  * Next-best language for ecologists is probably Python
    * Also free, very widely used outside of ecology
    * "better" general-purpose language than R
    * Better in some niches (text, image processing, ARCGIS integration)
    * Catching up to R for scientific data analysis
  * 

## Rstudio
  * Where commands go
  * scripts versus interactive use
  * projects

## Getting help
  * ?function_name
  * Davis R Users Group (and mailing list: read and/or ask)
  * Google, http://www.rseek.org/
  * Stack Overflow / Cross Validated (read and/or ask)
  * R-help lists (read-only)
  * vignette(topic = "topic_name", package = "package_name")

## Reading the help files

## A 2.5-hour slog through the R language
  * R as a calculator
  * Errors
  * Warnings
  * Assignment ("data can have names")
  * The workspace, ls(), rm()
  * Vectors ("data can be structured", elements can have names)
  * Functions on vectors (mean, sum, var, max)
  * Vector arithmetic
  * Recycling rule
  * Comparison (==, all.equal())
  * Subsetting ("getting data back out")
  * Data frames ("related vectors in table format")
  * Functions on data.frames (e.g. colMeans)
  * Lists
  * str()
  * [ versus [[ versus $
  * Matrices are not data.frames!
  * Types/classes
  * Floating point
  * NA
  * *apply
  * Loops
  * More: 
     * Shalizi's statistical computing course
     * *The Art of R programming*
     * Duncan Temple Lang's courses
     * Advanced R http://adv-r.had.co.nz/
     * R "Gotcha's" 
       * *The R Inferno*
       * For programmers: http://tim-smith.us/arrgh/

# ==============LUNCH==============

## Plotting
  * plot()
  * scatterplots
  * histograms
  * pairs plots
  * Adding lines/points to the canvas
  * Plotting options (briefly flashed on screen for future reference)
    * main, xlab/ylab, log, type, sub, cex, pch, col, las, lty, lwd, xaxs/yaxs, bty
  * Other graphics systems:
    * ggplot/ggvis
    * lattice
  * More:
    * 

## Statistical analysis
  * t-test, chi-sqare, linear regression
  * summary, str
  * formula syntax
  * brief glm
  * More:
    * Bolker
    * ?

# ==============SLEEP==============

## Advanced topics: text
  * paste
  * equality
  * regex matching

## Advanced topics: functions
  * Write your own procedures
  * scope:
    * Keep different field sites' "rainfall" variables from clobbering each other

## Advanced topics: Formatting Excel data
  * One "thing" per cell
  * One row per replicate
  * One column per variable
  * Long "better" than wide
  * Don't rely on anything that isn't text

## Advanced: Reproducible research
  * Minimize copy-pasting
  * Keep your analysis and write-up in sync
  * http://andrewgelman.com/2014/09/19/never-happened-r-markdown/
  * RMarkdown, sweave, built into RStudio
  * Rstudio Projects
  
