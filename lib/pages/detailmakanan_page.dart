import 'package:flutter/material.dart'; // Import UI utama
import 'package:firstproject/models/makanan_models.dart';
import 'package:get/get.dart';

class DetailMakananPage extends StatelessWidget {
  const DetailMakananPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Tangkap object MakananModels dari halaman list
    final MakananModels makanan = Get.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(makanan.namaMakanan),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 1. Gambar Utama Makanan
            Image.network(
              makanan.gambarMakanan,
              width: double.infinity,
              height: 220,
              fit: BoxFit.cover,
            ),
            
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 2. Nama Makanan
                  Text(
                    makanan.namaMakanan,
                    style: const TextStyle(
                      fontSize: 24, 
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),

                  // 3. Harga Makanan
                  Text(
                    makanan.hargaMakanan,
                    style: const TextStyle(
                      fontSize: 20, 
                      color: Colors.green, 
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),

                  // 4. Rating & Review
                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.amber),
                      const SizedBox(width: 4),
                      Text(
                        "${makanan.ratingMakanan}",
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          "\"${makanan.reviewMakanan}\"",
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            color: Colors.grey[700],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Divider(height: 30),

                  // 5. Deskripsi Makanan
                  const Text(
                    "Deskripsi",
                    style: TextStyle(
                      fontSize: 18, 
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    makanan.deskripsiMakanan,
                    style: const TextStyle(fontSize: 15),
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