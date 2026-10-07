import 'package:firstproject/models/makanan_models.dart';
import 'package:get/get.dart';

class ListMakananController extends GetxController {
  //kita buat data datanya 

  List<MakananModels> listMakanan = [
    MakananModels(namaMakanan: "Soto Ayam", hargaMakanan: "10.000",
     gambarMakanan:"https://www.dapurkobe.co.id/wp-content/uploads/soto-ayam.jpg", 
     deskripsiMakanan: "Soto ayam khas dengan kuah bening gurih dan taburan koya",
    ratingMakanan: 4.5, reviewMakanan: "Soto ayam ini sangat enak dan gurih, cocok untuk makan siang"),

    MakananModels(namaMakanan: "Lentog", hargaMakanan: " 25.000", 
    gambarMakanan: "https://tourism.kuduskab.go.id/wp-content/uploads/2024/12/lentog-tanjung-4-1536x1024.jpg",
    deskripsiMakanan: "Lentog khas Kudus dengan kuah santan dan taburan bawang goreng",
    ratingMakanan: 4.0, reviewMakanan: "Lentog ini sangat enak dan gurih, cocok untuk sarapan pagi"),

    MakananModels(namaMakanan: "Pindang Kerbau", hargaMakanan: " 55.000", 
    gambarMakanan: "https://disbudpar.kuduskab.go.id/kurmacenter/wp-content/uploads/2022/12/3-2-768x768.jpg",
    deskripsiMakanan: "Pindang daging kerbau berkuah hitam khas rempah kudus",
    ratingMakanan: 4.8, reviewMakanan: "Pindang kerbau ini sangat enak dan gurih, cocok untuk makan malam"),


    MakananModels(namaMakanan: "Garang Asem", hargaMakanan: " 15.000", gambarMakanan:"https://nico.co.id/wp-content/uploads/2025/12/garang-asem.jpg",
    deskripsiMakanan: "Garang asem makanan berkuah bening yang segar dengan daging ayam",
    ratingMakanan: 5.0, reviewMakanan: "Garang asem sangat segar, cocok untuk makan siang"),


    MakananModels(namaMakanan: "Jenang", hargaMakanan: "20.000",
    gambarMakanan:"https://cdn-linkumkm.bri.co.id/uploads/library/1/2/4/0/2/12402.jpg",
   deskripsiMakanan: "Oleh-oleh khas Kudus berbahan dasar beras ketan dan santan.",
   ratingMakanan: 4.8, reviewMakanan: "Makanan ini rasanya legit, cocok untuk cemilan"),
  ];
}