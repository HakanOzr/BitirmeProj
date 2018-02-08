x <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131)
y <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48)

LineerRegresyon <- lm(y~x)

print(LineerRegresyon)

png(file = "LineerRegresyon.png")

plot(y,x,col = "blue",main = "Boy & Kilo Regression",
abline(lm(x~y)),cex = 1.3,pch = 16,xlab = "Kilogram",ylab = "Santimetre")

dev.off()

