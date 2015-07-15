# --- Supervised Sample ---

install.packages('ElemStatLearn')
library('ElemStatLearn')

# Sample 90% of the data
sub = sample(nrow(spam), floor(nrow(spam) = 0.9))
train = spam[sub,]
test = spam[-sub,]

xTrain = train[, -58]
yTrain = train$spam

xTest = test[, -58]
yTest = test$spam

model = train(xTrain, yTrain, 'nb', trControl = trainControl(method'cv', number = 10))
prop.table(table(predict(model$finalModel,xTest)$class, yTest))

# --- Example 1: urine ---

urine

ye.model<-lm(urine$gravity~ph, data=urine)
urine$pred<-predict(ye.model,urine)
plot(urine$ph,urine$pred,col="blue",pch=16)
lines(urine$ph, fitted(ye.model), col="black")

# --- Example 2: urine data.frame ---

urine <- data.frame(ph = seq(1, 30, 0.75))
urine$pred <- predict(ye.model, urine)
points(urine$ph, urine$pred, col="green")
points(urine$ph, urine$pred, col = "green", pch = 3)
