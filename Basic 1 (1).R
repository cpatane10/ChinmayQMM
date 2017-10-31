#Creating file and finding mode, median, staandard deviation and variance
x <- c(1,4,6,6,6,7,7,7,7,8,8,9,9,9,10)
x
mode = table(as.vector(x))
mode
names(mode)[mode ==max(mode)]

y = c(1,2,3,4,5,6,6,7,7)
y
mean(y)

z = c(1,5,54)
sd(z)
var(z)
#histogram
hist(x)