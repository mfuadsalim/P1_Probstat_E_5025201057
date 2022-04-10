n = 20 ; p = 0.2

#Soal2.A
x = 4
probability = dbinom(x,n, prob = p, log = FALSE)
probability

#Soal2.B
hist(rbinom(x,n, prob = p), xlab = "X", ylab = "Frekuensi",main = "Histogram Kasus Covid-19")

#Soal2.C
mean = n * (prob = p)
variance = n * (prob = p) * (1-(prob = p))
mean
variance