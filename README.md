# P1_Probstat_E_5025201057
Repository Praktikum Probabilitas dan Statistika E - Modul 1

| Nama                      | NRP         |
|---------------------------|-------------|
| Muhammad Fuad Salim       | 5025201057  |

# Soal 1
> Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya.
  - a. Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi ? (distribusi Geometrik)
    
    Pada poin ini akan dikerjakan menggunakan distribusi Geometrik, maka dari itu kita akan menggunakan fungsi `dgeom()`. Disini kita misalkan X adalah sampel orang yang tidak menghadiri acara vaksinasi dan P adalah peluang kehadiran orang yang menghadiri acara vaksinasi, keduanya akan menjadi parameter untuk fungsi `dgeom`. Dari fungsi tersebut akan didapatkan hasil peluang sebesar `0.1024`.
    
    Code : 
    ```R
    #Soal1.A
    x = 3 ; p = 0.20
    P <- dgeom(x,p)
    P
    ```
  
    Bukti ScreenShoot : 
    
    ![1 A](https://user-images.githubusercontent.com/80630201/162623056-5402d423-4fd8-49be-99fe-83f1aead315d.png)
  
  - b.  Mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 )
      
      Pada poin ini akan dicari rerata dari distribusi Geometrik dengan 1000 data random dan beberapa parameter yang telah tertera pada soal. Di sini kita akan menggunakan fungsi `rgeom()` dimana dalam fungsi tersebut berisi banyaknya data acak dan peluang kehadiran orang dalam menghadiri acara vaksinasi. Salah satu hasil yang didapatkan adalah `0.1037`.
      
    Code :
    ```R
    #Soal1.B
    mean(rgeom(n = 10000, prob = p) == 3)
    mean
    ```

    Bukti ScreenShoot:
    
    ![1 B](https://user-images.githubusercontent.com/80630201/162623061-b40fb762-9c08-4e4f-a4de-e183eef354a2.png)
  - c. Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?
  
      Kedua poin tersebut menghasilkan dua hasil yang berbeda. Pada poin a dilakukan distribusi Geomterik biasa dan didapatkan nilai sebesar `0.1024`. Nilai tersebut merupakan      nilai terbesar dari peluang-peluang yang dapat terjadi pada kejadian tersebut. 
      
      Sedangkan pada poin b, didapatkan hasil sebesar `0.1037` karena merupakan rata-rata dari semua peluang-peluang yang dapat terjadi pada kejadian tersebut. 
      
      Untuk kebutuhan sampling, poin B lebih baik untuk digunakan daripada poin A.
      
  - d. Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama

    Untuk membuat histogram pada bahasa `R` kita akan menggunakan fungsi `hist()` dengan angka acak dari fungsi distribusi Geometrik sebagai parameternya.
    
    Code :
    ```R
    #Soal1.D
    n = 10000
    hist(rgeom(n,prob = p), main = "Histogram Distribusi Geometrik")
    ```
    
    Bukti ScreenShoot : 
    
    ![1d](https://user-images.githubusercontent.com/80630201/163003591-8e2f6fc3-c0ac-4969-bf50-9a9ade5cbf94.png)

    Histogram dari Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama :

    ![Histogram Distribusi Geometrik](https://user-images.githubusercontent.com/80630201/162623497-40ff5ff2-99ce-4d9f-a2bf-bc86f9117da9.png)
   
  
  - e. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Geometrik.\
    
    Untuk mendapatkan nilai mean dan variance kita akan menggunakan rumus banyak data dibagi dengan peluang kejadian untuk mencari mean `(μ)` serta nilai rataan dibagi dengan kuadrat dari peluang kejadian untuk mencari variance `(σ²)`
  
    Code :  
    ```R
    #Soal1.E
    mean = 1/P
    variance = (1-p)/(p^2)
    mean
    variance
    ```

    Bukti Screenshoot : 
    
    ![1 D](https://user-images.githubusercontent.com/80630201/162623064-fd3ff3ff-5d57-4fcc-a495-87c24c8183ad.png)
    
# Soal 2
 > Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2. Tentukan :
    
  - a. Peluang terdapat 4 pasien yang sembuh.

    Untuk mendapatkan nilai peluang tersebut kita akan menggunakan distribusi Binomial dengan menggunakan fungsi `dbinom()`. Dimana parameter dari fungsi tersebut berisi jumlah data pasien `n` dan peluang sembuhnya pasien `p`.
    
    Code :
    ```R
    n = 20 ; p = 0.2

    #Soal2.A
    x = 4
    probability = dbinom(x,n, prob = p, log = FALSE)
    probability
    ```
    
    Bukti ScreenShoot :
    
    ![2 A](https://user-images.githubusercontent.com/80630201/162624410-57ca1048-cbe7-4550-aa88-22067f866217.png)
    
   - b. Gambarkan grafik histogram berdasarkan kasus tersebut.

     Untuk membuat histogram pada bahasa `R` kita akan menggunakan fungsi `hist()` dengan angka acak dari fungsi distribusi Binomial sebagai parameternya.
    
     Code : 
     ```R
     #Soal2.B
     hist(rbinom(x,n, prob = p), xlab = "X", ylab = "Frekuensi",main = "Histogram Kasus Covid-19")
     ```
     
     Bukti ScreenShoot : 
     
     ![2 B](https://user-images.githubusercontent.com/80630201/162624421-1b5e8f53-d0bd-4c43-80a1-2c431c550b94.png)
     
     Histogram Distribusi Binomial Kasus Covid-19 : 
     
      ![Histogram 2 b](https://user-images.githubusercontent.com/80630201/162623900-5c81befa-8674-4bf7-98ad-1280cd0e720c.png)
      
   - c. Nilai Rataan (μ) dan Varian (σ²) dari DistribusiBinomial.
      
      Untuk Mendapatkan nilai rataan `(μ)` kita akan menggunakan rumus banyak data `n` dikali dengan peluang kejadi `p`. Dan untuk mencari nilai variance `(σ²)` kita akan menggunakan rumus nilai rataan `(μ)` dikali dengan komplemen peluang kejadian `1-p`.
    
      Code :
      ```R
      #Soal2.C
      mean = n * (prob = p)
      variance = n * (prob = p) * (1-(prob = p))
      mean
      variance
      ```
      
      Bukti ScreenShoot :
      
      ![2 C](https://user-images.githubusercontent.com/80630201/162624423-23ab7810-e553-4cca-9c5c-38229fda591f.png)
      
 # Soal 3
 > Diketahui data dari sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis 4,5 bayi lahir di rumah sakit ini setiap hari. (gunakan Distribusi Poisson)
 
 - a. Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?

    Pada poin ini kita akan menggunakan distribusi Poisson dengan menggunakna fungsi `dpois()` dimana fungsi tersebut memiliki parameter jumlah data bayi `x` dan rata-rata histrosi kelahiran bayi `lambda`.
    
    Code : 
    ```R
    lambda = 4.5 

    #Soal3.A
    x = 6 
    probability = dpois(x,lambda)
    probability
    ```
    
    Bukti ScreenShoot :
    
    ![3 A](https://user-images.githubusercontent.com/80630201/162624604-c4815ca6-229e-4551-8980-21f5e2e0c788.png)
    
  - b. Simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir di rumah sakit ini selama setahun (n = 365)
     
      Untuk membuat histogram pada bahasa `R` kita akan menggunakan fungsi `hist()` dengan angka acak dari fungsi distribusi Poisson sebagai parameternya.
    
    Code :
    ```R
    #Soal3.B
    x = 6 ; n = 365
    hist(rpois(x,lambda ), main = "Histogram Poisson")
    ```
    
    Bukti ScreenShoot : 
    
    ![3 B](https://user-images.githubusercontent.com/80630201/162624624-0f32a363-8608-4385-8ed5-7dbc59baaa7e.png)
    
  - c. Bandingkan hasil poin a dan b , Apa kesimpulan yang bisa didapatkan
     
     Pada poin a dan poin cenderung menghasilkan nilai yang sama. Hal ini dikarenakan poin a sendiri didapat dari range nilai dari poin B. Range poin B sendiri dapat dilihat pada plot yang telah terbentuk. Dari hal ini, nilai dari A akan berada di dalam range B.
     
      
  - d. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Poisson.

    Code :
    ```R
    #Soal3.D
    mean = variance = lambda
    mean
    variance
    ```
    
    Bukti ScreenShoot : 
    
    ![3 D](https://user-images.githubusercontent.com/80630201/162624636-9192f643-b8dc-4424-9f36-13cbf6a2bc57.png)
  
# Soal 4
> Diketahui nilai x = 2 dan v = 10. Tentukan:
 - a. Fungsi Probabilitas dari Distribusi Chi-Square.

     Di sini kita akan menggunakan fungsi `dchisq` untuk menemukan fungsi probabilitas dari Distribusi Chi-Square dimana di dalam fungsi ini akan memiliki parameter `x` dan `v`.
     Code :      
     ```R
      x = 2 ; v = 10

      #Soal4.A
      probability = dchisq(x,10)
      probability
      ```
      
      Bukti ScreenShoot : 
      
      ![4 A](https://user-images.githubusercontent.com/80630201/162625337-9732b272-078d-4c55-9089-71f907e27db0.png)
      
 - b. Histogram dari Distribusi Chi-Square dengan 100 data random
 
      Untuk membuat histogram pada bahasa `R` kita akan menggunakan fungsi `hist()` dengan angka acak dari fungsi distribusi Chi-Square sebagai parameternya.
      Code : 
      ```R
      #Soal4.B
      n = 100
      hist(rchisq(n,v), xlab = "X" , ylab = "V",main = "Histogram Chis Square")
      ```
      
      Bukti ScreenShoot : 
      ![4 B](https://user-images.githubusercontent.com/80630201/162625345-e2751958-0a36-492d-9031-d1c331dcbda7.png)
      
      
      Histogram dari Distribusi Chi-Square dengan 100 data random : 
      
      ![histogram 4 b](https://user-images.githubusercontent.com/80630201/162625432-ad3db39e-2bc3-4479-b8c6-7d4dac0331b5.png)
      
      
  - c. Nilai Rataan (μ) dan Varian (σ²) dari DistribusiChi-Square

      Untuk mendapatkan nilai rataan `(μ)` kita akan menggunakan nilai `v` sebagai nilai rataan `(μ)`. Dan untuk mendapatkan nilai variace kita akan mendapatkannya dengan cara mengalikan nilai dari `v` dengan 2.
      
      Code :
      ```R
      #Soal4.C
      mean = v
      variance = 2 * v
      mean 
      variance
      ```
      
      Bukti ScreenShoot :
      
      ![4 C](https://user-images.githubusercontent.com/80630201/162625351-bcd9224c-cbac-4802-b2fc-e46f2af5313e.png)
      
# Soal 5
> Diketahui bilangan acak (random variable) berdistribusi exponential (λ = 3). Tentukan :
  - a. Fungsi Probabilitas dari Distribusi Exponensial
       Di sini kita akan menggunakan fungsi `dexp` untuk menemukan fungsi probabilitas dari Distribusi Eksponensial dimana di dalam fungsi tersebut berisi banyaknya data dan rate `λ` sebagai parameter dari fungsi ini.
       
       Code :
       ```R
       lambda = 3 

       #Soal5.A
       set.seed(10)

       probability  = rexp(10, rate = lambda)
       probability
       ```
       
       Bukti ScreenShoot : 
       
       ![5 A](https://user-images.githubusercontent.com/80630201/163011728-270df504-e983-4303-bba3-f8ce4f899574.png)
       
  - b. Histogram dari Distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random
        
       Untuk membuat histogram pada bahasa `R` kita akan menggunakan fungsi `hist()` dengan angka acak dari fungsi distribusi Eksponensial dan variasi pada jumlah data yang digunakan yakni (10,100,1000,dan 10000) sebagai parameternya.
       
       Code : 
       ```R
       #Soal5.B
       hist(rexp(10, rate = lambda), main = "Histogram Exponential untuk 10 Bilangan Random")
       hist(rexp(100, rate = lambda), main = "Histogram Exponential untuk 100 Bilangan Random")
       hist(rexp(1000, rate = lambda), main = "Histogram Exponential untuk 1000 Bilangan Random")
       hist(rexp(10000, rate = lambda), main = "Histogram Exponential untuk 10000 Bilangan Random")
       ```
       
       Bukti Screen Shoot :
       
       ![5 B1](https://user-images.githubusercontent.com/80630201/163011745-65af2a7c-70d1-42e5-9fa9-b423224978ff.png)
       
       Histogram dari Distribusi Eksponensial variasi 10 :
       
       ![histogram 5 b 1](https://user-images.githubusercontent.com/80630201/163011773-cddfed3c-df62-439b-a3c0-c7384048d8c7.png)
       
       Histogram dari Distribusi Eksponensial variasi 100 :
       
       ![histogram 5 b 2](https://user-images.githubusercontent.com/80630201/163011776-5e9d223d-126b-47d2-a0be-265876f483ac.png)
       
       Histogram dari Distribusi Eksponensial variasi 1000 :
       
       ![histogram 5 b 3](https://user-images.githubusercontent.com/80630201/163011782-96f2e70d-5c91-4a6e-9ae1-169864b733d6.png)
       
       Histogram dari Distribusi Eksponensial variasi 10000 :
       
       ![histogram 5 b 4](https://user-images.githubusercontent.com/80630201/163011787-5b5df8c0-8028-4251-bde4-4ecb69376158.png)
       
  - c. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Exponensial untuk n = 100 dan λ = 3
       
       Untuk mendapatkan nilai rataan `(μ)` kita akan menggunakan rumus `mwan()` dengan parameter angka acak dari Distribusi Eksponensial. Dan untuk mendapatkan nilai variance kita akan menggunakan rumus `sd()` atau standar deviasi dengan parameter angka acak dari Distribusi Eksponensial dan kemudian dikuadratkan.
       
       Code : 
       
       ```R
       #Soal5.C
       n = 100
       set.seed(1)
       mean = mean(rexp(n, rate = lambda))
       variance = (sd(rexp(n, rate = lambda))) ^ 2
       mean
       variance
       ```
       
       Bukti ScreenShoot :
       
       ![5 C](https://user-images.githubusercontent.com/80630201/163011768-031f2ad4-907f-4a90-a2db-17cd6cffeb2f.png)
       
# Soal 6
> Diketahui generate random nilai sebanyak 100 data, mean = 50, sd = 8. Tentukan :
  - a. Fungsi Probabilitas dari Distribusi Normal P(X1 ≤ x ≤ X2), hitung Z-Score Nya dan plot data generate randomnya dalam bentuk grafik. Petunjuk(gunakan fungsi plot()).
    Pada poin ini untuk mendapatkan Z-score, pertama akan dilakukan generate random number dengan menggunakan fungsi `rnorm()`. Kemudian, akan dilakukan penentuan nilai `X1` dan `X2` yang nantinya digunakan dalam membuat plot grafik.
        
       Code : 
       
       ```R
       n = 100; mean = 50; sd = 8

       #Soal6.A
       set.seed(1)
       data<-rnorm(n,mean,sd)
       data
       summary(data)

       x1 = runif(1, min = min(data), max = mean)
       x2 = runif(1, min = mean, max = max(data))
       x1
       x2

       probability1<- pnorm(x1,mean,sd)
       probability2<- pnorm(x2,mean,sd)
       probability1
       probability2

       probability<- probability2 - probability1
       plot(data)
       ```
       
       Bukti ScreenShoot : 
       
       ![6 A](https://user-images.githubusercontent.com/80630201/163015870-dd3fd6e2-72f1-4093-9e93-2af80f1932b2.png)
       
       Hasil Generate Plot : 
       
       ![plotdata6](https://user-images.githubusercontent.com/80630201/163015896-399ea25f-54db-4ee5-b22f-5b1936dda66d.png)
       

   - b. Generate Histogram dari Distribusi Normal dengan breaks 50 dan format penamaan: `NRP_Nama_Probstat_{Nama Kelas}_DNhistogram`
     Untuk membuat histogram pada bahasa `R` kita akan menggunakan fungsi `hist()` dengan angka acak dari fungsi Distribusi Normal dengan parameter yaitu data dan nilai breaks.
     
     Code : 
     ```R
     #Soal6.B
     breaks = 50
     hist(data, breaks, main = "5025201057_Muhammad Fuad Salim_Probstat_E_Histogram")
     ```
     
      Bukti ScreenShoot :
     
      ![6 B](https://user-images.githubusercontent.com/80630201/163015883-273c5394-8ca3-4eb5-80ae-fcf77aaaa71d.png)
     
      Histogram Distribusi Normal dengan breaks 50 : 
     
      ![histogram 6 b](https://user-images.githubusercontent.com/80630201/163015893-0589f8a4-2586-432f-9c4a-6202eb7e9075.png)

   - c. Nilai Varian (σ²) dari hasil generate random nilai Distribusi Normal
      
     Untuk mendapatkan nilai variance kita akan menggunakan rumus kuadrat dari standar deviasi `sd`.
     
      Code : 
      ```R
      #Soal6.C
      variance = (sd(data)) ^ 2
      variance
      ```
     
      Bukti ScreenShoot : 
     
      ![6 C](https://user-images.githubusercontent.com/80630201/163015888-185421ed-6037-4ede-94b3-e40612b6274d.png)
    
## Sekian Terima Kasih :D    
