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
  - b.  mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 )
  ```R
  #Soal1.B
  mean(rgeom(n = 10000, prob = p) == 3)
  mean
  ```
  - c. Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?
  
      Kedua poin tersebut menghasilkan hasil yang berbeda. Pada poin A, dilakukan distribusi Geomterik biasa dan didapatkan nilai sebesar . Nilai tersebut merupakan      nilai terbesar dari peluang-peluang yang dapat terjadi pada kejadian tersebut. Sedangkan pada poin B, didapatkan hasil sebesar karena merupakan rata-rata dari semua peluang-peluang yang dapat terjadi pada kejadian tersebut. Untuk kebutuhan sampling, poin B lebih baik untuk digunakan daripada poin A.
      
  - d. Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama
    ```R
    #Soal1.D
    n = 10000
    hist(rgeom(n,prob = p), main = "Histogram Distribusi Geometrik")
    ```
    Histogram dari Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama
