data=co2
#View(data)
plot(data)
#class(data)

### Linear Regression on Time Series Data
lm.model=lm(data~time(data))
plot(data,main="CO2 monthly data")
abline(lm.model)
hist(lm.model$residuals)
qqnorm(lm.model$residuals)
plot(time(data),lm.model$residuals)
