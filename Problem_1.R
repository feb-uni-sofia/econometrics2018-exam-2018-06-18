## Exam 1 / Problem 1

internet <- read.csv('https://s3.eu-central-1.amazonaws.com/econometrics2018/data/internet.csv')

## a)

mean(internet$penetration)

## b)

internet <- within(internet, {
  lowFacebookUse <- facebook < 32
})

## c)
table(internet$lowFacebookUse)
sum(internet$lowFacebookUse)

## d)

fit <- lm(penetration ~ lowFacebookUse, data = internet)
summary(fit)

## e)

## f) 
## No R code needed

## g)
qt(0.025, df = 31 - 2)

## h)
