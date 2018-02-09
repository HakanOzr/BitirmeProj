library(caret)
data(iris)
# Modeli oluþtur ( Fit etmek )
fit <- knn3(Species~., data=iris, k=5)
# Konsolda göster ( Summary etmek )
summary(fit)
# Tahminlemeyi yap.
predictions <- predict(fit, iris[,1:4], type="class")
# Tabloyu oluþtur.
table(predictions, iris$Species)

