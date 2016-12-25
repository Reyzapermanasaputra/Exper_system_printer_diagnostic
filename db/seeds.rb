# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create{ name: 'Chicago' , { name: 'Copenhagen' }})
#   Mayor.create(name: 'Emanuel', city: cities.first)
Indication.first_or_create(
  [
    {code: 'P01', name: 'Printer Ink Jet'},
    {code: 'P02', name: 'Printer Laser Jet'},
    {code: 'P03', name: 'Printer Dot Matrix'},
    {code: 'P04', name: 'Printer Bekerja tetapi tidak Ada Hasil Cetakan diKertas'},
    {code: 'P05', name: 'Hasil cetakan Printer tidak sempurna / bergaris'},
    {code: 'P06', name: 'Printer gagal menarik kertas'},
    {code: 'P07', name: 'Kertas pada printer macet'},
    {code: 'P08', name: 'Cetakan kabur / tidak rata'},
    {code: 'P09', name: 'Cetakan berbayang'},
    {code: 'P10', name: 'Titik - titik hitam pada halaman'},
    {code: 'P11', name: 'Garis melintang pada halaman'},
    {code: 'P12', name: 'Lampu error berkedap kedip'},
    {code: 'P13', name: 'Lampu feed dan eror masih menyala tanpa berkedip tetapi tidak bisa mencetak'},
    {code: 'P14', name: 'Printer Tidak bisa mencetak sepenuhnya'},
    {code: 'P15', name: 'printer hanya mencetak satu kali'}
  ]) 

Solution.first_or_create(
  [
    {code: 'S01', name: 'Lepas cartridge dengan hati-hati untuk mengecek apakah tinta sudah habis atau belum. Setelah itu lakukan pembersihan pada mat head nya dengan menggunakan cairan pembersih tinta'},
    {code: 'S02', name: 'Membatasi tebal tumpukan kertas sesuai dengan kapasitas yang didukung oleh printer. Sebelum
dipasang pada paper try, sebaiknya kertas
dikibas-kibaskan terlebih dahulu agar kertas
tidak saling menempel'},
    {code: 'S03', name: 'Menggoyang toner printer agar lebih merata dan
dapat dipakai kembali, namun tetap bersiap
untuk mengisinya dengan yang baru.'},
    {code: 'S04', name: 'Usaplah drum dengan kain halus untuk
menghilangkan benda asing yang menempel atau
dengan mengganti drum jika terdapat lubang
kecil pada permukaan drum'},
    {code: 'S05', name: 'Pastikan posisi kertas terpasang dengan baik,
apabila sudah dilakukan tetapi lampu masih
menyala kemungkinan sensor kertar printer
rusak. Disarankan untuk mengganti sensor
printer yan baru'},
    {code: 'S06', name: 'Coba lakukan pengecekan di kabel cutternya,
apakah ada yang putus atau tidak, dan cek juga
apakah sensor gerak masih berfungsi dengan
baik atau tidak dan lakukanlah pembersihan
sensor dengan menggunakan cairan pembersih
printer.'}
  ]) 