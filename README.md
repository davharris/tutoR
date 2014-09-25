# tutoR (outline)

---------------------

Format? Handouts?

---------------------

## 2-3 examples where scripting saves massive time/effort/errors
  * Scraping data from the web
  * Analyzing multiple Excel data sets the same way (with plots)

## Why R?
  * Why not matlab/python/perl/Java/SAS/...?
    * It's what your colleagues use
      * packages to do stuff you want
      * interfaces with everything else
      * share code with colleagues
      * It's free
  * Next-best language for ecologists is probably Python

## Rstudio
  * Where commands go
  * scripts versus interactive use
  * projects

## R language
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


# ==============LUNCH==============

## Plotting
  * plot()
  * scatterplots
  * histograms
  * pairs plots
  * Adding lines/points to the canvas
  * Plotting options (briefly flashed on screen for future reference)
    * main, xlab/ylab, log, type, sub, cex, pch, col, las, lty, lwd, xaxs/yaxs, bty
  * Other graphics systems

## Data analysis
  * t-test, chi-sqare, linear regression
  * summary, str
  * formula syntax
  * brief glm

## Advanced: text
  * paste
  * equality
  * regex matching

## Advanced: functions
  * Write your own procedures
  * scope:
    * Keep different field sites' "rainfall" variables from clobbering each other

## Advanced: Formatting Excel data
  * One "thing" per cell
  * One row per replicate
  * One column per variable
  * Long "better" than wide
  * Don't rely on anything that isn't text

## Advanced: Reproducible research
  * 
  
