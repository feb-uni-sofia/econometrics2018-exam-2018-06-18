## Exam 1 / Problem 2
houses <- read.csv('https://s3.eu-central-1.amazonaws.com/econometrics2018/data/houses.csv')
str(houses)

## a)
houses <- within(houses, {
  Price <- SalePrice / 10000
})

## b)

fit <- lm(Price ~ YearRemodAdd + GarageCars, data = houses)

## c)

summary(fit)

## d)
## No R code required.

## e)

houses <- within(houses, {
  YearRemodAdd1 <- YearRemodAdd - 1994
})

## f)

fit1 <- lm(Price ~ YearRemodAdd1 + GarageCars, data = houses)
summary(fit1)

predict(fit1, newdata = data.frame(YearRemodAdd1 = 0, GarageCars = 0), se.fit = TRUE)
