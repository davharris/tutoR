# 9:15: Workshop goals:
* Learn enough to get started on your own
* Show cool things you can do with R that will save you time and make you more productive.
  * Don't try to absorb *everything*.  You can always go back to the slides later.
* **Topic list:**
  * **Saturday morning**
    * Introduction
    * Talking to R
    * Getting help
    * When things go wrong
    * R building blocks
  * **Saturday afternoon**
    * Plotting
    * Data import
    * Loops
    * Stats
**
  * **Sunday**
    * text
    * functions
    * formatting excel data
    * reproducibility

# 9:20: 2-3 examples where scripting saves massive time/effort/errors
  * Scraping data from the web & saving as .csv
  * Analyzing multiple .csv data sets the same way (with plots)

# 9:30 Why R?
* It's what your colleagues use
  * packages to do stuff you want
  * interfaces with everything else
  * share code with colleagues
* Next-best language for ecologists is probably Python
  * Also free, very widely used outside of ecology
  * "better" general-purpose language than R
  * Catching up to R for scientific data analysis

# 9:40 Rstudio
* Command line
* scripts versus interactive use
* tabs:
  - Files
  - Plots
  - Help
  - tabbed scripts

# 10:00 Talking to R
##R can do everything your graphic calculator can
* Arithmetic operators
  - works like you'd expect.  * is for multiplication. ^ is for exponents. Parentheses separate things.
* plot(function(x) sin(x^2), from = 0, to = 5)

## Assignment ("data can have names")
* Need a way to refer back to our data. 
  * Don't always want to type 525600 for number of minutes in a year.
  * Want to separate data from code. Only need to update fly biomass once. 
    * Insect biomass = fly biomass + beetle biomass + bug biomass
    * Total biomass = fly biomass + beetle biomass + bug biomass + algae biomass
  * Stay in sync
* `<-` and `=`
* Pass by value
  * `x=2; y=x; x=3; y==2`
* The workspace/environment

## Using functions
* examples:
  * sin(1), log10(5), 
  * `sum(1, 2, 3, 4)` or `sum(1:4)`
  * `plot(iris)`
* Functions are verbs.
  * "Take this thing and do the function to it"
  * Verbs can have modifiers
    * "Pet the cat *carefully*"
  * Functions can have arguments 
    * `plot(iris, col = iris$Species)`
* Anatomy of a function call:
  * name of function, open paren, (optional) argument name, equals, argument value, comma, more arguments, closing paren.
  * plot(log(1:10), type = "o")
  * `...`
* Some arguments have default values and don't need to be specified.  Predetermined values are listed on help page
* There are tons of functions available!
  * Most common R usage pattern: use pre-written functions on your custom data
    * do standard actions to your unique stuff
* Will also discuss how to write your own functions

# Break

# 10:30 Getting help
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
  * Need to know the function name
  * Operators and special things need backticks
  * Written for programmers, by programmers
  * Reading help files is a skill.  Might need to look in 3-4 different sections.
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
* More: 
   * R Basics workshop: http://rbasicsworkshop.weebly.com/presentations--exersices.html
   * Shalizi's statistical computing course
   * *The Art of R programming*
   * Duncan Temple Lang's courses
   * Advanced R http://adv-r.had.co.nz/
   * R "Gotcha's" 
     * *The R Inferno*
     * For programmers: http://tim-smith.us/arrgh/

# 11:00 When things go wrong
* Errors
  * "Something went so badly wrong that I stopped and gave up before I broke something"
  * 1 + "two"
    * Error in 1 + "two" : non-numeric argument to binary operator
* Warnings
  * "Something *might* be wrong, but I kept going"
  * 1:3 + 1:4
    * Warning message:
      In 1:3 + 1:4 :
      longer object length is not a multiple of shorter object length
* Bugs:
  * "I told R to do the wrong thing"
  * These are the scariest, because you don't always know your code is wrong.
* [More on errors and warnings](http://www.burns-stat.com/documents/tutorials/impatient-r/#errors)

# 11:10 Break

# 11:25 Data in R
* Vectors ("data can be structured")
  * Make a vector with the `c` ("combine") function.
    * Elements have a position and (optionally) names
    * insects = c(bugs = 12.1, flies = 23.7, beetles = 3.1)
    * insects2 = c(bugs = 7.1, flies = 3.8, beetles = 8.2)
  - Concatenate vectors with `c` as well.
    + insects3 = c(insects, insects2)
  * The names are stored in a separate vector
    * names(insects)
  * Functions on vectors (mean, sum, var, max)
    * mean(insects)
    * sd(insects)
  * Vector arithmetic: element by element
    * insects + insects2
    * insects / 3
    * Recycling rule
  * Comparison (==, all.equal())
  * Subsetting ("getting data back out")
    * insects["flies"]
    * insects[2]
    * insects[c(FALSE, TRUE, FALSE)]
* Vectors always belong to *one* "type"
* Classes of vectors
  * logical: TRUE or FALSE
  * integer: ..., -1, 0, 1, 2, ...
  * numeric: 3.141592653589793115998, 2.718281828459045090796
  * character: "anything", "ΣΔΘ™", 
  * R "promotes" vectors when concatenated:
    * c(insects, "not a number")
* Factors: weird hybrid objects that don't always work as expected!
  * Describes categories like experimental treatments
    * "Nitrogen addition", "Phosphorous addition",  "Control"
    * Stored internally as 1, 2, 3!
- **Stop for questions**
* Data frames ("related vectors in table format")
  * This is where most of your data will live
  * Rows are replicates; columns are variables
    * InsectSprays
    * plot(count ~ spray, data = InsectSprays)
* Data frames ("related vectors in table format")
  * This is where most of your data will live
  * Rows are replicates; columns are variables
    * insect_df = data.frame(site1 = insects, site2 = insects2)
  * Different kinds of vectors in each column
  * Functions on data.frames (e.g. colMeans)
* Learning about your objects
  * Rstudio, str
  * head, tail
  * length, dim, dimnames, class
* [ versus [[ versus $
  * Iris
  * $ works on lists (including data frames). Pulls out _one_ element (e.g. a vector)
  * [[ works on anything: pulls out _one_ element (e.g. a vector)
  * [ works on anything: pulls out _one or more_ elements, leaving them in their original container (e.g. a dataframe).
* Matrices are not data.frames!
* NA

# Noon: LUNCH

# 12:45: Plotting
* plot()
  * scatterplots
  * Other forms, *depending on the form of your data*
* histograms
* pairs plots
* Building a plot, piece by piece
  * ```plot(
      NULL, 
      xlim = range(iris$Sepal.Length), 
      ylim = range(iris$Sepal.Width),
      xlab = "This is the x axis",
      ylab = "This is the y axis"
    )
    points(iris$Sepal.Length, iris$Sepal.Width)
    arrows(1, 1, 2, 2, lwd = 5)
    text(x = 5, y = 3, labels = "Text", cex = 3)```
* Plotting options (briefly flashed on screen for future reference)
  * main, xlab/ylab, log, type, sub, cex, pch, col, las, lty, lwd, xaxs/yaxs, bty, mgp, axes, type, asp
+ Graphics devices
* Exporting figures
  * Rstudio graphics device
  * PDF, PNG, etc.
    * One line to set up the graphics device 
      * `pdf("myplot.pdf", length = 7, width = 5)`
    * As many lines as you like to build your plot
      - `plot(count ~ spray, data = InsectSprays)`
    * One line to close the graphics device & seal up your file so it's readable
      - `dev.off()`
* Other graphics systems:
  * ggplot/ggvis
  * lattice

# 1:45 Data import
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

# 2:30 Break

# 2:40 loops
* "Do something a bunch of times"
  * "Do the stuff in brackets once for each one of these things"
  * lapply/sapply/replicate?

# 3:15 break

# 3:25 Statistical analysis
* t-test, chi-sqare, linear regression
* summary, str
* formula syntax
* brief glm
* More:
  * Bolker
  * McElreath
  * ?

# Homework??
* Download, summarize, and plot some data

# ==============SLEEP==============

# Advanced topics: text
* paste
* equality
* regex matching

# Advanced topics: functions
* Write your own procedures
* scope:
  * Keep different field sites' "rainfall" variables from clobbering each other

# Advanced topics: Formatting Excel data
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

# Advanced: Reproducible research
* Minimize copy-pasting
* Keep your analysis and write-up in sync
* http://andrewgelman.com/2014/09/19/never-happened-r-markdown/
* RMarkdown, sweave, built into RStudio
* Rstudio Projects
  b.com/datacarpentry/datacarpentry/blob/master/lessons/excel/ecology-examples/05-exporting-data.md
* Helpful tools:
 * http://practicaldatamanagement.wordpress.com/2014/05/16/help-me-im-covered-in-bees-or-using-openrefine-to-clean-specimen-data/

## Advanced: Reproducible research
* Minimize copy-pasting
* Keep your analysis and write-up in sync
* http://andrewgelman.com/2014/09/19/never-happened-r-markdown/
* RMarkdown, sweave, built into RStudio
* Rstudio Projects
  
