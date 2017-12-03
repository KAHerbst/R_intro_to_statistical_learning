#Statistical Learning in R Lab Work

################### Chapter 2 ###################

#rnorm creates standard normal random variables - mean 0 sd 1
#use set seed for reproducibility
set.seed(489)
random_normal_example <- rnorm(50)

#we want to save our plots
jpeg("figure.jpg")
plot(rnorm(10), rnorm(10))
#we are done with the plot
dev.off()
##### can also be done manually by copy pasting the plot window

#the contour() function produces a contour plot to represent three-dimensional data like a topgraphical map
# vector of x, y and matrix of z given x,y as row,col
x <- seq(-pi,pi, length = 50)
y <- x
f <- outer(x,y, function(x,y)cos(y)/(1+x^2))
contour(x,y,f, nlevels =45, add = TRUE)
#heatmap contour plot
image(x,y,f)

#three-dimensional plot
persp(x,y,f, theta = 30, phi = 270)
#theta and phi are the angles that the plotm is viewed at

#outputs row, col
dim(f)

#as.factor converts quantitative variables to qualitative 
#if the variable is cateogrical then boxplots are made by the plot() function
#loading data 
# header if the first line is variable names
#read.table(source, header = TRUE)
#names(read in source) gives us the variable names
#na.omit(data) removes the rows with na values in them
#identify(x,y,variables) prints out variable values for x,y in our plots

#savehistory()
#loadhistory()