import 'package:firstproject/pages09/listmakanan_page.dart';
import 'package:firstproject/pages09/detailmakanan_page.dart';
import 'package:get/get.dart';

class Routes09 {
  static const String list_makanan = "/list_makanan";
  static const String detail_makanan = "/detail_makanan";

  // Daftar halaman aplikasi
  static final myPages = [
    GetPage(
      name: list_makanan,
      page: () => ListmakananPage(),
    ),
    GetPage(
      name: detail_makanan,
      page: () => DetailmakananPage(),
    ),
  ];
}