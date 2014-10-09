rodents = read.csv("http://esapubs.org/archive/ecol/E090/118/Portal_rodents_19772002.csv")

head(rodents)

plot(table(rodents$yr))

par(mfrow = c(3, 4))  # Break the plotting area into a 3x4 grid

# Take each plot from the first to the 24th...
for(plot_number in 1:24){
  # Note whether the observations occurred in the current plot_number of interest
  in_plot = rodents$plot == plot_number
  
  # Tally up the number of rows in the plot of interest that happened in each year
  tally = table(rodents$yr[in_plot])
  
  # Plot the tally
  plot(tally, main = plot_number)
}

