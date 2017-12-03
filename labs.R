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