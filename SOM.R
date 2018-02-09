#Sarap içindeki maddelerin kütüphanesini kullanarak SOM örneði
library(kohonen)
data(wines)
set.seed(7)

#Som ýzgarasý oluþturulmasý.
sommap <- som(scale(wines), grid = somgrid(2, 2, "hexagonal"))

## Gruplama oluþtur
groups<-3
som.hc <- cutree(hclust(dist(sommap$codes[[1]])), groups)

#Çizdir
plot(sommap, type="codes", bgcol=rainbow(groups)[som.hc])

#Bulutlar arasý sýnýrý ekle.
add.cluster.boundaries(sommap, som.hc)
