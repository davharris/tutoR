# tutoR (outline)

---------------------

Format? Handouts?

---------------------

## 2-3 examples where scripting saves massive time/effort/errors
  * Scraping data from the web & saving as .csv
  * Analyzing multiple .csv data sets the same way (with plots)

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

## Rstudio
* Where commands go
* scripts versus interactive use
* projects

## Getting help
* ?function_name OR help("function_name").
  * Operators and special things need backticks
  * Need to know the function name
  * Reading help files is a skill.  Might need to look in 3-4 sections.
  * It gets easier
  * "help files are a last resort. With any luck someone's written a tutorial somewhere on the web." -- https://twitter.com/pitakakariki/status/515256714396848128
*  Vignettes
  * vignette(topic = "topic_name", package = "package_name")
  * vignette PDFs on CRAN
* Google, http://www.rseek.org/
  * Stack Overflow / Cross Validated (read and/or ask)
  * R-help lists (read-only!)
* Davis R Users Group (and mailing list: read and/or ask)

## A 2.5-hour slog through the R language
* R as a calculator
  * Arithmetic operators
  * Equality
  * Using functions like `mean`
* Errors
  * "Something went so badly wrong that I stopped and gave up before I broke something"
* Warnings
  * "Something *might* be wrong, but I kept going"
* Assignment ("data can have names")
* The workspace
* Vectors ("data can be structured", elements can have names)
  * Functions on vectors (mean, sum, var, max)
  * Vector arithmetic
  * Recycling rule
  * Subsetting ("getting data back out")
  * Comparison (==, all.equal())
* Subsetting ("get stuff back out of the vector")
* Types/classes
* Data frames ("related vectors in table format")
  * This is where most of your data will live
  * Rows are replicates; columns are variables
  * Different kinds of vectors in each column
  * Functions on data.frames (e.g. colMeans)
* [ versus [[ versus $
* Matrices are not data.frames!
* NA
* Loops ("Do something a bunch of times")
  * "Do the stuff in brackets once for each one of these things"
* More: 
   * Shalizi's statistical computing course
   * *The Art of R programming*
   * Duncan Temple Lang's courses
   * Advanced R http://adv-r.had.co.nz/
   * R "Gotcha's" 
     * *The R Inferno*
     * For programmers: http://tim-smith.us/arrgh/

# ==============LUNCH=============

## Data import
* read.csv()
  * strings as factors
  * header
  * sep
  * quote
* RCurl
* SQL/Excel/ODBC
* Manuals
  * Quick: http://www.statmethods.net/input/importingdata.html
  * Comprehensive: http://cran.r-project.org/doc/manuals/r-release/R-data.html

## Plotting
* plot()
  * scatterplots
* histograms
* pairs plots
* Adding lines/points to the canvas
* Plotting options (briefly flashed on screen for future reference)
  * main, xlab/ylab, log, type, sub, cex, pch, col, las, lty, lwd, xaxs/yaxs, bty, mgp, axes
* Other graphics systems:
  * ggplot/ggvis
  * lattice

## Statistical analysis
* t-test, chi-sqare, linear regression
* summary, str
* formula syntax
* brief glm
* More:
  * Bolker
  * McElreath
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
  
