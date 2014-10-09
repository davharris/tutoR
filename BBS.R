# Download the finches file from BBS website
temp <- tempfile()
download.file("ftp://ftpext.usgs.gov/pub/er/md/laurel/BBS/DataFiles/Species/Finches.zip",temp)
data <- read.csv(unzip(temp))
unlink(temp)

library(dplyr)

data %>% group_by("Year") %>% summarise(sum(SpeciesTotal)) %>% plot(type = "o")
data %>% group_by("Year") %>% summarise(mean(SpeciesTotal)) %>% plot(type = "o")

