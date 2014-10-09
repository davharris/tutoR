# Download the finches file from BBS website
temp <- tempfile()
download.file("ftp://ftpext.usgs.gov/pub/er/md/laurel/BBS/DataFiles/Species/Finches.zip",temp)
data <- read.csv(unzip(temp))
unlink(temp)

