import 'package:flutter/material.dart';
import 'package:firstproject/models09/makanan_model.dart';
import 'package:get/get.dart';

class DetailmakananPage extends StatelessWidget {
  DetailmakananPage({super.key});

  @override
  Widget build(BuildContext context) {
    final MakananModel makanan =
        Get.arguments as MakananModel;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Makanan"),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Gambar makanan
            Image.network(
              makanan.gambarMakanan,
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  width: double.infinity,
                  height: 250,
                  color: Colors.grey.shade200,
                  child: const Icon(
                    Icons.fastfood,
                    size: 80,
                    color: Colors.grey,
                  ),
                );
              },
            ),

            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Nama makanan
                  Text(
                    makanan.namaMakanan,
                    style: const TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  // Harga makanan
                  Text(
                    "Rp ${makanan.harga}",
                    style: const TextStyle(
                      fontSize: 22,
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 15),

                  // Rating makanan
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 28,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        makanan.ratingMakanan.toString(),
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 25),

                  // Review makanan
                  const Text(
                    "Review Makanan",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),

                  Text(
                    makanan.reviewMakanan,
                    style: const TextStyle(
                      fontSize: 16,
                      height: 1.5,
                    ),
                  ),

                  const SizedBox(height: 25),

                  // Deskripsi makanan
                  const Text(
                    "Deskripsi Makanan",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),

                  Text(
                    makanan.deskripsiMakanan,
                    style: const TextStyle(
                      fontSize: 16,
                      height: 1.5,
                    ),
                    textAlign: TextAlign.justify,
                  ),

                  const SizedBox(height: 30),

                  // Tombol kembali
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.back();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                          vertical: 15,
                        ),
                      ),
                      child: const Text(
                        "Kembali",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}