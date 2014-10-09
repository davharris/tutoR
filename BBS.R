# Download the finches file from BBS website
temp <- tempfile()
download.file("ftp://ftpext.usgs.gov/pub/er/md/laurel/BBS/DataFiles/Species/Finches.zip",temp)
data <- read.csv(unzip(temp))
unlink(temp)

# Plot total counts per year

years = sort(unique(data$Year))

counts = sapply(
  years,
  function(year){
    sum(data$SpeciesTotal[data$Year == year])
  }
)
plot(counts ~ years, type = "o")


# Do the same thing with dplyr
library(dplyr)
data %>% group_by("Year") %>% summarise(sum(SpeciesTotal)) %>% plot(type = "o")

