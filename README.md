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
