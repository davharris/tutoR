rodents = read.csv("http://esapubs.org/archive/ecol/E090/118/Portal_rodents_19772002.csv")

head(rodents)

plot(table(rodents$yr))

par(mfrow = c(3, 4))
for(plot_number in 1:24){
  counts = rodents$yr[rodents$plot == plot_number]
  plot(table(counts), main = plot_number)
}

