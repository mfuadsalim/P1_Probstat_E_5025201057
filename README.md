# P1_Probstat_E_5025201057
Repository Praktikum Probabilitas dan Statistika E

| Nama                      | NRP         |
|---------------------------|-------------|
| Muhammad Fuad Salim       | 50252010057 |

# Soal 1
> Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya.
  - a. Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi ? (distribusi Geometrik)
  ```R
  #Soal1.A
  x = 3 ; p = 0.20
  P <- dgeom(x,p)
  P
  ```
  ![1 A](https://user-images.githubusercontent.com/80630201/162623056-5402d423-4fd8-49be-99fe-83f1aead315d.png)
  - b.  mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 )
  ```R
  #Soal1.B
  mean(rgeom(n = 10000, prob = p) == 3)
  mean
  ```
  ![1 B](https://user-images.githubusercontent.com/80630201/162623061-b40fb762-9c08-4e4f-a4de-e183eef354a2.png)
  - c. Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?
  
      Kedua poin tersebut menghasilkan hasil yang berbeda. Pada poin A, dilakukan distribusi Geomterik biasa dan didapatkan nilai sebesar . Nilai tersebut merupakan      nilai terbesar dari peluang-peluang yang dapat terjadi pada kejadian tersebut. Sedangkan pada poin B, didapatkan hasil sebesar karena merupakan rata-rata dari semua peluang-peluang yang dapat terjadi pada kejadian tersebut. Untuk kebutuhan sampling, poin B lebih baik untuk digunakan daripada poin A.
      
  - d. Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama
    ```R
    #Soal1.D
    n = 10000
    hist(rgeom(n,prob = p), main = "Histogram Distribusi Geometrik")
    ```
    Histogram dari Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama
   ![Histogram Distribusi Geometrik](https://user-images.githubusercontent.com/80630201/162623497-40ff5ff2-99ce-4d9f-a2bf-bc86f9117da9.png)
   
  
  - e. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Geometrik.
  ```R
  #Soal1.E
  mean = 1/P
  variance = (1-p)/(p^2)
  mean
  variance
  ```
  ![1 D](https://user-images.githubusercontent.com/80630201/162623064-fd3ff3ff-5d57-4fcc-a495-87c24c8183ad.png)
# Soal 2
 > Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2. Tentukan :
    
  - a. Peluang terdapat 4 pasien yang sembuh.
    ```R
    n = 20 ; p = 0.2

    #Soal2.A
    x = 4
    probability = dbinom(x,n, prob = p, log = FALSE)
    probability
    ```
    
   - b. Gambarkan grafik histogram berdasarkan kasus tersebut.
     ```R
     #Soal2.B
     hist(rbinom(x,n, prob = p), xlab = "X", ylab = "Frekuensi",main = "Histogram Kasus Covid-19")
     ```
      ![Histogram 2 b](https://user-images.githubusercontent.com/80630201/162623900-5c81befa-8674-4bf7-98ad-1280cd0e720c.png)
      
   - c. Nilai Rataan (μ) dan Varian (σ²) dari DistribusiBinomial.
    
      ```R
      #Soal2.C
      mean = n * (prob = p)
      variance = n * (prob = p) * (1-(prob = p))
      mean
      variance
      ```
