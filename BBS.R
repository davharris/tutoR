# Get the data on finch sightings by Route ID
temp <- tempfile()
download.file("ftp://ftpext.usgs.gov/pub/er/md/laurel/BBS/DataFiles/Species/Finches.zip",temp)
finch <- read.csv(unzip(temp))
unlink(temp)

# Get the data on where the routes are
temp <- tempfile()
download.file("ftp://ftpext.usgs.gov/pub/er/md/laurel/BBS/DataFiles/Routes.zip",temp)
routes <- read.csv(unzip(temp))
unlink(temp)

# Link the Route IDs between the two data sets
data = merge(finch, routes)

latlon = data[data$Aou == 5190, c("Longi", "Lati")]

# Plot the observations for species 5190 on a simple map
plot(latlon)


library(maps)
library(mapdata)
library(mapproj)


# Create a file in my current directory to hold a high-resolution map
png("map.png", width = 3200, height = 2800, res = 1000)

# Tweak the margins
par("mai" = c(0, 0, 0, 0))

# Plot the country borders using my preferred map projection, etc
map(
  database = "worldHires", 
  proj = "albers", 
  param = c(29.5, 45.5),
  interior = TRUE,
  ylim = c(25, 75),
  xlim = c(-167, -53),
  resolution = 0.2,
  wrap = TRUE,
  col = "gray",
  mar = c(0, 0, 0, 0),
  myborder = 0,
  orientation = c(95, -102, 0),
  lwd = 1
)

# Add points for the bird observations, using my preferred colors, etc.
points(mapproject(latlon$Longi, latlon$Lati), pch = 16, cex = .15, col = "red")

# Seal up the file so it can be viewed
dev.off()


