# tutoR (outline)

---------------------

Format? Handouts?

---------------------

## Workshop goals: this won't make you an expert.
* It probably won't even be enough to make you comfortable with R.
* Show cool things you can do with R that will save you time and make you more productive.
  * Don't try to absorb *everything*.  You can always go back to the slides later.
* Understand what's possible
* Understand what's available
* Understand some of the big picture
* Learn enough to get started on your own

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
* Task views (for sifting through packages on a given topic):
  * Ecology: http://cran.r-project.org/web/views/Environmetrics.html
  * Spatial: http://cran.r-project.org/web/views/Spatial.html
  * Phylogenetics: http://cran.r-project.org/web/views/Phylogenetics.html
  * Genetics: http://cran.r-project.org/web/views/Genetics.html
*  Vignettes (for package tutorials etc):
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
  * Functions are verbs.
    * Verbs can have modifiers
    * Functions can have arguments 
  * Anatomy of a function call:
    * name of function, open paren, (optional) argument name, equals, argument value, comma, more arguments, closing paren.
  * Some arguments have default values and don't need to be specified.  Predetermined values are listed on help page
  * Operators are just functions that go between their arguments
* Parts of a help file (using `rep` as our example)
  * **Title:** big picture in big text
  * **Description:** summary
  * **Usage:** very minimal examples
  * **Arguments:** list of ways you can customize the function's action for your needs
  * **Details:** Details
  * **Value:** What you get out of the function
  * **Examples** (consider starting here): ways to use the function
* Errors
  * "Something went so badly wrong that I stopped and gave up before I broke something"
* Warnings
  * "Something *might* be wrong, but I kept going"
* Assignment ("data can have names")
* The workspace
* Vectors ("data can be structured")
  * Make a vector with the `c` ("combine") function.
  * Elements have a position and (optionally) names
  * The names are stored in a separate vector
  * Functions on vectors (mean, sum, var, max)
  * Vector arithmetic
  * Recycling rule
  * Subsetting ("getting data back out")
  * Comparison (==, all.equal())
* Subsetting ("get stuff back out of the vector")
* Classes of vectors
  * Numeric
  * Integer
  * character
  * Factor
* Data frames ("related vectors in table format")
  * This is where most of your data will live
  * Rows are replicates; columns are variables
  * Different kinds of vectors in each column
  * Functions on data.frames (e.g. colMeans)
* Learning about your objects
  * Rstudio, str
  * length, dim, dimnames, class
* [ versus [[ versus $
* Matrices are not data.frames!
* NA
* Loops ("Do something a bunch of times")
  * "Do the stuff in brackets once for each one of these things"
  * lapply/sapply
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
  * write.csv works similarly
    * file = "where_to_put_me.csv"
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
* Exporting figures
  * Rstudio graphics device
  * PDF, PNG
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

## Homework??
* 

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
  
