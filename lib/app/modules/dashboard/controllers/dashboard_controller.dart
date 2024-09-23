import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pijarmahir/app/modules/dashboard/views/dashboard_view.dart';

class DashboardController extends GetxController {
  var isLoading = false.obs;

  int selectedIndex = 0;

  void onTileTapped(int index) {
    selectedIndex = index;
  }

  void onLoginTapped() {
    isLoading.value = true;

    Future.delayed(const Duration(seconds: 2), () {
      isLoading.value = false;

      Get.to(() => const DashboardView());

      Get.snackbar(
        'Login berhasil',
        'Selamat datang di Pijar!',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.green.withOpacity(0.8),
        colorText: Colors.white,
        duration: const Duration(seconds: 3),
      );
    });
  }

  final List<Map<String, String>> categories = [
    {
      "name": "Mahir Teknologi",
      "image": "assets/images/img_mahirteknologi.png"
    },
    {"name": "Mahir Digital", "image": "assets/images/img_mahirdigital.png"},
    {
      "name": "Mahir Marketing",
      "image": "assets/images/img_mahirmarketing.png"
    },
    {"name": "Mahir Bahasa", "image": "assets/images/img_mahirbahasa.png"},
    {"name": "Mahir\nBisnis", "image": "assets/images/img_mahirbisnis.png"},
    {"name": "Mahir Desain", "image": "assets/images/img_mahirdesain.png"},
    {"name": "Mahir Masak", "image": "assets/images/img_mahirmasak.png"},
    {"name": "Mahir Admin", "image": "assets/images/img_mahiradmin.png"},
  ];

  final List<String> partners = [
    "assets/images/img_skillacademy.png",
    "assets/images/img_arkademi.png",
    "assets/images/img_cakap.png",
    "assets/images/img_binuscenter.png",
    "assets/images/img_myedusolve.png",
    "assets/images/img_sertifikasiku.png",
    "assets/images/img_vokraf.png",
    "assets/images/img_alterra.png",
  ];

  List<Map<String, String>> reviews = [
    {
      "photo": "https://picsum.photos/200",
      "name": "Gloria Arnasari",
      "jobTitle": "Head of Designer at PT. XYZ",
      "title": "Pengalaman belajar mendorong saya ke level berikutnya",
      "review":
          "Saya selalu mencari cara untuk meningkatkan keterampilan tim saya dan mengikuti perkembangan teknologi terbaru. Aplikasi online class ini benar-benar membantu kami untuk mencapai tujuan tersebut. Dengan akses ke berbagai kursus berkualitas tinggi, kami dapat belajar kapan saja dan di mana saja. Materi yang disediakan sangat relevan dan mudah dipahami, terutama dalam bidang desain dan teknologi.",
    },
    {
      "photo": "https://picsum.photos/300",
      "name": "Gloria Arnasari",
      "jobTitle": "Head of Designer at PT. XYZ",
      "title": "Pengalaman belajar mendorong saya ke level berikutnya",
      "review":
          "Saya selalu mencari cara untuk meningkatkan keterampilan tim saya dan mengikuti perkembangan teknologi terbaru. Aplikasi online class ini benar-benar membantu kami untuk mencapai tujuan tersebut. Dengan akses ke berbagai kursus berkualitas tinggi, kami dapat belajar kapan saja dan di mana saja. Materi yang disediakan sangat relevan dan mudah dipahami, terutama dalam bidang desain dan teknologi.",
    },
    {
      "photo": "https://picsum.photos/400",
      "name": "Gloria Arnasari",
      "jobTitle": "Head of Designer at PT. XYZ",
      "title": "Pengalaman belajar mendorong saya ke level berikutnya",
      "review":
          "Saya selalu mencari cara untuk meningkatkan keterampilan tim saya dan mengikuti perkembangan teknologi terbaru. Aplikasi online class ini benar-benar membantu kami untuk mencapai tujuan tersebut. Dengan akses ke berbagai kursus berkualitas tinggi, kami dapat belajar kapan saja dan di mana saja. Materi yang disediakan sangat relevan dan mudah dipahami, terutama dalam bidang desain dan teknologi.",
    },
  ];

  final List<Map<String, String>> recommendation = [
    {
      "image": "assets/images/img_course_1.png",
      "title": "Product Management : How to Tie Metrics to Product Strategy",
      "price": "Rp 75.000"
    },
    {
      "image": "assets/images/img_course_1.png",
      "title": "Product Management : How to Tie Metrics to Product Strategy",
      "price": "Rp 75.000"
    },
    {
      "image": "assets/images/img_course_1.png",
      "title": "Product Management : How to Tie Metrics to Product Strategy",
      "price": "Rp 75.000"
    },
  ];

  final List<Map<String, String>> bundling = [
    {
      "image": "assets/images/img_bundle_1.png",
      "title": "Microsoft Office Bundling",
      "price": "Rp 320.000",
      "bundle":
          "- Kuasai Formula Excel dalam 2 jam!\n- Tarik Perhatian Audiens dengan Presentasi...\n- Tips Penggunaan Word dengan Efektif",
    },
    {
      "image": "assets/images/img_bundle_1.png",
      "title": "Microsoft Office Bundling",
      "price": "Rp 320.000",
      "bundle":
          "- Kuasai Formula Excel dalam 2 jam!\n- Tarik Perhatian Audiens dengan Presentasi...\n- Tips Penggunaan Word dengan Efektif",
    },
    {
      "image": "assets/images/img_bundle_1.png",
      "title": "Microsoft Office Bundling",
      "price": "Rp 320.000",
      "bundle":
          "- Kuasai Formula Excel dalam 2 jam!\n- Tarik Perhatian Audiens dengan Presentasi...\n- Tips Penggunaan Word dengan Efektif",
    },
  ];

  List<Map<String, String>> articles = [
    {
      "image": "assets/images/img_article_1.png",
      "title":
          "Mengembangkan Soft Skills yang Dibutuhkan di Tempat Kerja Modern",
      "date": "22 Sept 2023"
    },
    {
      "image": "assets/images/img_article_1.png",
      "title": "Tips dan Trik Meningkatkan Produktivitas di Dunia Kerja",
      "date": "18 Sept 2023"
    },
    {
      "image": "assets/images/img_article_1.png",
      "title": "Cara Efektif Menjaga Keseimbangan Kerja dan Kehidupan",
      "date": "15 Sept 2023"
    },
    {
      "image": "assets/images/img_article_1.png",
      "title": "Pentingnya Kolaborasi Tim dalam Mencapai Target",
      "date": "10 Sept 2023"
    },
  ];
}
