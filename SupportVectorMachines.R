x=c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20)
y=c(3,4,5,4,8,10,10,11,14,20,23,24,32,34,35,37,42,48,53,60)

#DataFrame oluþturduk.
train=data.frame(x,y)

#Ekrana çizdirdik.
plot(train,pch=16)

#Lineer Regresyon algoritmasýný çalýþtýrdýk.
model <- lm(y ~ x, train)

#Ekrana tekrar çizdirdik.
abline(model)

#SVM için gerekli olan kütüphane varsayýlan deðildir indirmeniz gerekir.
library(e1071)

#SVM fonksiyonunu çalýþtýrdýk lineer regresyonla ayný syntaxda.
model_svm <- svm(y ~ x , train)

#Tahminlemeyi yaptýk.
pred <- predict(model_svm, train)

#Ekranda tahminlemeleri göster.
points(train$x, pred, col = "blue", pch=4)
