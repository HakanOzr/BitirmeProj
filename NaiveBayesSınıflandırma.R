library(e1071)
data(iris)
# Modeli oluþtur ( fit etmek )
fit <- naiveBayes(Species~., data=iris)
# Özeti göster ( Summary )
summary(fit)
# Tahminlemeyi yap.
predictions <- predict(fit, iris[,1:4])
# Sonucu Göster.
table(predictions, iris$Species)
