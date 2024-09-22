import 'package:get/get.dart';

class DashboardController extends GetxController {
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
}
