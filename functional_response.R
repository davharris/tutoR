type_2 = function(a, h, N){
  a * N / (h + a * h * N)
}

density_range = seq(0, 25, length = 500)

plot(type_2(a = 1, h = 2, N = density_range), type = "l")
plot(type_2(a = 2, h = 3, N = density_range), type = "l")


library(manipulate)

manipulate(
  plot(type_2(a = attack_rate, h = handling_time, N = density_range), type = "l"),
  attack_rate = slider(min = 0.0001, max = 10),
  handling_time = slider(min = 0.0001, max = 10)
)

