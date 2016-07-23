setwd("C:/Users/User/Desktop/rprog")
getwd()

library(datasets) 
data(iris) 
# A description of the dataset can be found by running 
View(iris) 
str(iris) 
head(iris) 
virginica<-subset(iris,Species == 'virginica') 

# Question 1
sl<-data.frame(virginica$Sepal.Length)
sl
sl<-data.frame(iris$Sepal.Length[iris$Species=="virginica"])
summary(sl)

# QUestion 2
apply(iris[, 1:4], 2, mean)
apply(iris[, 1:4], 1, mean)

#Question 3
library(datasets) 
data(mtcars) 
View(mtcars)
?mtcars 
str(mtcars) 
head(mtcars) 

tapply(mtcars$cyl, mtcars$mpg, mean)
apply(mtcars, 2, mean)
sapply(split(mtcars$mpg, mtcars$cyl), mean)

l <- list(a = 1:10, b = 11:20)
lapply(l, mean)
lapply(l, sum)

# Question 4
abs(mean(mtcars$hp[mtcars$cyl==4])-mean(mtcars$hp[mtcars$cyl==8]))

# Question 5
debug(ls) 
ls() 

debugonce(ls)

