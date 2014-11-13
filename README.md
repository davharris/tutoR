# tutoR (outline)

---------------------

Format? Handouts?

---------------------

## 9:15: Workshop goals:
* This won't make you an expert. It probably won't even be enough to make you comfortable with R.
* Show cool things you can do with R that will save you time and make you more productive.
  * Don't try to absorb *everything*.  You can always go back to the slides later.
* Understand what's possible
* Understand what's available
* Understand some of the big picture
* Learn enough to get started on your own
* **Topic list:**
  * Talking to R
  * Getting help
  * When things go wrong
  * R building blocks
  * Plotting
  * Data import
  * Loops
  * Stats
  * Advanced topics:
    * text
    * functions
    * formatting excel data
    * reproducibility

## 9:20: 2-3 examples where scripting saves massive time/effort/errors
  * Scraping data from the web & saving as .csv
  * Analyzing multiple .csv data sets the same way (with plots)

## 9:30 Why R?
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

## 9:40 Rstudio
* Where commands go
* scripts versus interactive use
* projects
* tabs
* Files
* Environment

# 15-min Break?

## 10:00 Talking to R
* R as a calculator
  * Arithmetic operators
  * Equality
* Using functions like `mean` and `plot`
 * examples:
  * `sum(1, 2, 3, 4)` or `sum(1:4)`
  * `plot(cars)`
  * `plot(iris, col = iris$species)`
 * Functions are verbs.
   * Verbs can have modifiers
   * Functions can have arguments 
 * Anatomy of a function call:
   * name of function, open paren, (optional) argument name, equals, argument value, comma, more arguments, closing paren.
   * `...`
 * Some arguments have default values and don't need to be specified.  Predetermined values are listed on help page
 * Operators are just functions that go between their arguments: 
 *     `+`(1, 2)==1+2
* Assignment ("data can have names")
 * `<-` and `=`
 * Pass by value
   * `x=2; y=x; x=3; y==2`
* The workspace/environment

## 10:30 Getting help
* ?function_name OR help("function_name").
* Parts of a help file (using `rep` as our example)
  * **Title:** big picture in big text
  * **Description:** summary
  * **Usage:** very minimal examples
  * **Arguments:** list of ways you can customize the function's action for your needs
  * **Details:** Details
  * **Value:** What you get out of the function
  * **Examples** (consider starting here): ways to use the function
* Help files are annoying.
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
* **Real example of getting help for plotting**

## 11:00 When things go wrong
* Errors
  * "Something went so badly wrong that I stopped and gave up before I broke something"
* Warnings
  * "Something *might* be wrong, but I kept going"
* Bugs:
  * "I told R to do the wrong thing"
  * These are the scariest, because you don't know your code is wrong.

## 11:10 Break

## 11:25 R building blocks
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
    * Factors are useful, but they're also weird hybrid objects that don't always work as expected
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
* More: 
   * R Basics workshop: http://rbasicsworkshop.weebly.com/presentations--exersices.html
   * Shalizi's statistical computing course
   * *The Art of R programming*
   * Duncan Temple Lang's courses
   * Advanced R http://adv-r.had.co.nz/
   * R "Gotcha's" 
     * *The R Inferno*
     * For programmers: http://tim-smith.us/arrgh/

# Noon: LUNCH

## 12:45: Plotting
* plot()
  * scatterplots
  * Other forms, *depending on the form of your data*
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
 
## 1:30 break

## 1:45 Data import
* read.csv()
  * strings as factors!
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
* Something spatial

## 2:30 Break

## 2:40 loops
* "Do something a bunch of times"
  * "Do the stuff in brackets once for each one of these things"
  * lapply/sapply/replicate?

## 3:15 break

## 3:25 Statistical analysis
* t-test, chi-sqare, linear regression
* summary, str
* formula syntax
* brief glm
* More:
  * Bolker
  * McElreath
  * ?

## Homework??
* Download, summarize, and plot some data

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
* https://github.com/datacarpentry/datacarpentry/blob/master/lessons/excel/ecology-examples/01-format-data.md
* https://github.com/datacarpentry/datacarpentry/blob/master/lessons/excel/ecology-examples/02-common-mistakes.md
* https://github.com/datacarpentry/datacarpentry/blob/master/lessons/excel/ecology-examples/04-quality-control.md
* https://github.com/datacarpentry/datacarpentry/blob/master/lessons/excel/ecology-examples/05-exporting-data.md
* Helpful tools:
 * http://practicaldatamanagement.wordpress.com/2014/05/16/help-me-im-covered-in-bees-or-using-openrefine-to-clean-specimen-data/

## Advanced: Reproducible research
* Minimize copy-pasting
* Keep your analysis and write-up in sync
* http://andrewgelman.com/2014/09/19/never-happened-r-markdown/
* RMarkdown, sweave, built into RStudio
* Rstudio Projects
  
