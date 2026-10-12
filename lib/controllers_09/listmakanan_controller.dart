import 'package:firstproject/models09/makanan_model.dart';
import 'package:get/get.dart';

class ListmakananController extends GetxController {
  // Data makanan berupa List
  List<MakananModel> dataMakanan = [
    MakananModel(
      namaMakanan: "Mie Ayam",
      harga: "10.000",
      reviewMakanan: "Hidangan dengan cita rasa gurih yang dipadukan dengan tekstur mi yang lembut dan topping ayam berbumbu.",
      ratingMakanan: 4.5,
      deskripsiMakanan: "Mie ayam merupakan hidangan berbahan dasar mi yang disajikan dengan potongan daging ayam berbumbu, sayuran, dan kuah kaldu.",
      gambarMakanan: "https://nibble-images.b-cdn.net/nibble/original_images/1000015570.jpg?class=medium",
    ),
    MakananModel(
      namaMakanan: "Soto kerbau",
      harga: "12.000",
      reviewMakanan: "Memiliki cita rasa rempah yang khas dengan perpaduan kuah gurih dan daging kerbau yang kaya rasa.",
      ratingMakanan: 4.0,
      deskripsiMakanan: "Soto kerbau merupakan hidangan berkuah yang menggunakan daging kerbau sebagai bahan utama, dilengkapi bumbu rempah dan pelengkap sesuai penyajian.",
      gambarMakanan: "https://rricoid-assets.obs.ap-southeast-4.myhuaweicloud.com/berita/Semarang/o/1718856673265-13743434_306552969709244_1835153491_n/asa1nftxb2grh13.jpeg",
    ),
    MakananModel(
      namaMakanan: "Bubur Ayam",
      harga: "10.000",
      reviewMakanan: "Tekstur bubur yang lembut berpadu dengan rasa gurih serta beragam pelengkap yang menambah cita rasa.",
      ratingMakanan: 4.5,
      deskripsiMakanan: "Bubur ayam merupakan hidangan berbahan dasar beras yang dimasak hingga bertekstur lembut, kemudian disajikan dengan suwiran ayam dan aneka pelengkap.",
      gambarMakanan: "https://i0.wp.com/resepkoki.id/wp-content/uploads/2017/04/Resep-Bubur-Ayam.jpg?fit=1536%2C1536&ssl=1",
    ),
    MakananModel(
      namaMakanan: "Bakso",
      harga: "12.000",
      reviewMakanan: "Perpaduan tekstur bakso yang kenyal dan kuah kaldu yang gurih memberikan cita rasa yang khas.",
      ratingMakanan: 4.5,
      deskripsiMakanan: "Bakso merupakan hidangan berbahan dasar olahan daging yang dibentuk menjadi bola-bola, kemudian disajikan bersama kuah kaldu dan pelengkap lainnya.",
      gambarMakanan: "https://awsimages.detik.net.id/community/media/visual/2019/08/12/dca21bf3-923c-486f-bc2e-a3dcd759b1df_43.jpeg?w=600&q=90",
    ),
    MakananModel(
      namaMakanan: "Ayam Geprek",
      harga: "10.000",
      reviewMakanan: "Perpaduan ayam bertekstur renyah dengan sambal bercita rasa pedas memberikan sensasi rasa yang kuat.",
      ratingMakanan: 4.5,
      deskripsiMakanan: "Ayam geprek merupakan hidangan ayam goreng yang diolah dengan cara digeprek bersama sambal, umumnya disajikan dengan nasi putih.",
      gambarMakanan: "https://resepkoki.id/wp-content/uploads/2019/11/Ayam-Geprek.jpg",
    ),
    MakananModel(
      namaMakanan: "Nasi Goreng",
      harga: "11.000",
      reviewMakanan: "Memiliki aroma khas dari bumbu yang ditumis serta perpaduan rasa gurih dan manis yang seimbang.",
      ratingMakanan: 4.0,
      deskripsiMakanan: "Nasi goreng merupakan hidangan berbahan dasar nasi yang dimasak dengan bumbu, kecap, serta tambahan bahan seperti telur, sayuran, atau daging.     ",
      gambarMakanan: "https://dcostseafood.id/wp-content/uploads/2023/04/Nasi-Goreng-telor.jpg",
    ),
    MakananModel(
      namaMakanan: "Tahu Campur",
      harga: "12.000",
      reviewMakanan: "Perpaduan bahan dan bumbu bercita rasa khas menghasilkan hidangan dengan kombinasi rasa gurih dan kaya rempah.",
      ratingMakanan: 4.0,
      deskripsiMakanan: "Tahu campur merupakan hidangan khas Jawa Timur yang umumnya terdiri atas tahu, lontong, sayuran, lentho, dan kuah berbumbu petis.",
      gambarMakanan: "https://i0.wp.com/resepkoki.id/wp-content/uploads/2020/03/Resep-Tahu-Campur.jpg?fit=1689%2C1920&ssl=1",
    ),
    MakananModel(
      namaMakanan: "Lentog Tanjung",
      harga: "10.000",
      reviewMakanan: "Perpaduan lontong dan sayuran berbumbu menghasilkan cita rasa gurih yang menjadi ciri khas kuliner tradisional Kudus.",
      ratingMakanan: 4.0,
      deskripsiMakanan: "Lentog Tanjung merupakan kuliner khas Desa Tanjung, Kabupaten Kudus, yang terdiri atas lontong dengan sayur nangka muda dan sayur lodeh.",
      gambarMakanan: "https://i.pinimg.com/736x/5e/df/22/5edf224c025b5080ce5317427d4e5ad6.jpg",
    ),
  ];
}