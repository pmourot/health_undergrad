#####################################
# PS1 - Ex1.b.                      #
#####################################

library(ggplot2)
dirpath <- "./"

w = 25
theta = 100
H = rep(0:theta)
c = w*(theta-theta*exp(-H)-H)
plot(H,c)

sol = data.frame(c,H)

pdf(paste(dirpath,"graph_ps1ex1b.pdf",sep = ""),width=6,height=4)
ggplot(sol, aes(x = H, y = c)) +
  theme_bw() +
  geom_line( size = 1)
dev.off()
