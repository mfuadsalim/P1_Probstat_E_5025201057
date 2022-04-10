lambda = 3 

#Soal5.A
set.seed(10)

probability  = rexp(10, rate = lambda)
probability

#Soal5.B
#hist(rexp(10, rate = lambda), main = "Histogram Exponential untuk 10 Bilangan Random")
#hist(rexp(100, rate = lambda), main = "Histogram Exponential untuk 100 Bilangan Random")
#hist(rexp(1000, rate = lambda), main = "Histogram Exponential untuk 1000 Bilangan Random")
#hist(rexp(10000, rate = lambda), main = "Histogram Exponential untuk 10000 Bilangan Random")

#Soal5.C
n = 100
set.seed(1)
mean = mean(rexp(n, rate = lambda))
variance = (sd(rexp(n, rate = lambda))) ^ 2
mean
variance
