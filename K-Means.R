library(datasets)
str(attitude)
summary(attitude)
dat = attitude[,c(3,4)]
plot(dat, main = "Ayricalik ve ogrenme arasindaki baglanti yuzdesi", pch =20, cex =2)
set.seed(7)
km1 = kmeans(dat, 2, nstart=100)
plot(dat, col =(km1$cluster +1) , main="K-Mean 2 Bulutlu Tablosu", pch=20, cex=2) 

