import 'package:get/get.dart';

class DiscussionController extends GetxController {
  int selectedIndex = 0;

  void onTileTapped(int index) {
    selectedIndex = index;
  }

  final List<String> filter = [
    "Terbaru",
    "Aktif",
    "Reward",
    "Belum Terjawab",
  ];

  final List<Map<String, String>> discussion = [
    {
      "name": "Budi Siregar",
      "occupation": "Kapal Laut",
      "image": "https://picsum.photos/200",
      "date": "1 hari lalu",
      "question": "Bagaimana cara menemukan pekerjaan terbaik untuk saya?",
      "detail":
          "Selama hidup saya, cita cita saya terus berubah. Saat saya masih anak-anak, saya ingin menjadi polisi, dokter, tentara. Saat remaja ingin menjadi youtuber. Lalu saat ini saya berkuliah di bidang IT, tetapi saya masih belum yakin dengan tujuan saya, saya ingin menjadi apa? Mohon bantuannya teman teman Pijar.",
    },
    {
      "name": "Budi Siregar",
      "occupation": "Kapal Laut",
      "image": "https://picsum.photos/200",
      "date": "1 hari lalu",
      "question": "Bagaimana cara menemukan pekerjaan terbaik untuk saya?",
      "detail":
          "Selama hidup saya, cita cita saya terus berubah. Saat saya masih anak-anak, saya ingin menjadi polisi, dokter, tentara. Saat remaja ingin menjadi youtuber. Lalu saat ini saya berkuliah di bidang IT, tetapi saya masih belum yakin dengan tujuan saya, saya ingin menjadi apa? Mohon bantuannya teman teman Pijar.",
    },
    {
      "name": "Budi Siregar",
      "occupation": "Kapal Laut",
      "image": "https://picsum.photos/200",
      "date": "1 hari lalu",
      "question": "Bagaimana cara menemukan pekerjaan terbaik untuk saya?",
      "detail":
          "Selama hidup saya, cita cita saya terus berubah. Saat saya masih anak-anak, saya ingin menjadi polisi, dokter, tentara. Saat remaja ingin menjadi youtuber. Lalu saat ini saya berkuliah di bidang IT, tetapi saya masih belum yakin dengan tujuan saya, saya ingin menjadi apa? Mohon bantuannya teman teman Pijar.",
    },
  ];
}
