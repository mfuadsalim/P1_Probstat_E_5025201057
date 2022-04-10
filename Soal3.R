lambda = 4.5 

#Soal3.A
x = 6 
probability = dpois(x,lambda)
probability

#Soal3.B
x = 6 ; n = 365
hist(rpois(x,lambda ), main = "Histogram Poisson")

#Soal3.D
mean = variance = lambda
mean
variance