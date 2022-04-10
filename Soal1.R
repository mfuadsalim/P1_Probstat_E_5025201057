#Soal1.A
x = 3 ; p = 0.20
P <- dgeom(x,p)
P

#Soal1.B
mean(rgeom(n = 10000, prob = p) == 3)
mean

#Soal1.D
n = 10000
hist(rgeom(n,prob = p), main = "Histogram Distribusi Geometrik")

#Soal1.E
mean = 1/P
variance = (1-p)/(p^2)
mean
variance