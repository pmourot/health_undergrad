#install.packages('nleqslv')
library("nleqslv")

uninsured = 0.5 * sqrt(20000) + 0.4 * sqrt(19000) + .1 * sqrt(10000)

fnA <- function(x) {
  y <- 0.5 * sqrt(20000-x) + 0.4 * sqrt(20000 - 500 - 0.2 * 500 - x) + 0.1 * sqrt(20000 - 500 - 9500*0.2 - x)-uninsured
  return(y)
}
solA =nleqslv(c(0,10000), fnA)
print(solA$x)