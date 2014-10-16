temp <- tempfile()
download.file("ftp://ftpext.usgs.gov/pub/er/md/laurel/BBS/DataFiles/Species/Finches.zip",temp)
finch <- read.csv(unzip(temp))
unlink(temp)

temp <- tempfile()
download.file("ftp://ftpext.usgs.gov/pub/er/md/laurel/BBS/DataFiles/Routes.zip",temp)
routes <- read.csv(unzip(temp))
unlink(temp)

data = merge(finch, routes)

plot(data[data$Aou == 5190, c("Longi", "Lati")])

