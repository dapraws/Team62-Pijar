import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:pijarmahir/app/data/fonts.dart';

import '../controllers/discussion_controller.dart';

class DiscussionView extends GetView<DiscussionController> {
  const DiscussionView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Text('Pijar')),
            ListTile(title: const Text('Item 1'), onTap: () {}),
            ListTile(title: const Text('Item 2'), onTap: () {}),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 3,
        shadowColor: Colors.black,
        title: Text('Diskusi', style: mediumText24),
        centerTitle: false,
        actions: [
          Image.asset("assets/icons/ic_ranks.png", width: 30),
          const SizedBox(width: 8),
          Image.asset("assets/icons/ic_shopping_cart.png", width: 30),
          const SizedBox(width: 8),
          Image.asset("assets/icons/ic_notifications.png", width: 30),
          const SizedBox(width: 8),
        ],
      ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
        child: Column(
          children: [
            // Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Semua Diskusi", style: semiBoldText24),
                    Text("2,456,321 Pertanyaan",
                        style: regularText16.copyWith(color: Colors.black54)),
                  ],
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                  decoration: BoxDecoration(
                      color: const Color(0xFF3088C8),
                      border: Border.all(color: const Color(0xFFD2D2D4)),
                      borderRadius: BorderRadius.circular(20)),
                  child: const Icon(Icons.add, size: 30, color: Colors.white),
                )
              ],
            ),
            const SizedBox(height: 12),

            // Search Bar
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                    decoration: BoxDecoration(
                        color: const Color(0xFFF2F2F5),
                        border: Border.all(color: const Color(0xFFD2D2D4)),
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      children: [
                        const Icon(Icons.search, color: Color(0xFF79797F)),
                        const SizedBox(width: 5),
                        Text("Cari diskusi...",
                            style: regularText18.copyWith(
                                color: const Color(0xFF79797F))),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                  decoration: BoxDecoration(
                      color: const Color(0xFFF2F2F5),
                      border: Border.all(color: const Color(0xFFD2D2D4)),
                      borderRadius: BorderRadius.circular(20)),
                  child: const Icon(Icons.filter_alt_outlined,
                      size: 30, color: Color(0xFF79797F)),
                )
              ],
            ),
            const SizedBox(height: 4),

            // Filter
            Row(
              children: [
                Card(
                  elevation: 3,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    decoration: BoxDecoration(
                        color: const Color(0xFFF2F2F5),
                        border: Border.all(color: const Color(0xFF3088C8)),
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      children: [
                        Text("Terbaru",
                            style: mediumText16.copyWith(
                                color: const Color(0xFF3088C8))),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),

            // List Discussion
            Card(
              color: Colors.white,
              elevation: 5,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Column(
                  children: [
                    // Profile
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CircleAvatar(
                          radius: 30.0,
                          backgroundColor: Colors.transparent,
                          backgroundImage:
                              NetworkImage("https://picsum.photos/200"),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Budi Siregar", style: regularText18),
                              Text("Kapal Laut",
                                  style: regularText16.copyWith(
                                      color: Colors.black54))
                            ],
                          ),
                        ),
                        Text("1 hari lalu",
                            style:
                                regularText16.copyWith(color: Colors.black54))
                      ],
                    ),
                    const SizedBox(height: 12),
                    // Discussion
                    Column(
                      children: [
                        Text(
                            "Bagaimana cara menemukan pekerjaan terbaik untuk saya?",
                            style: regularText18),
                        Text(
                            "Selama hidup saya, cita cita saya terus berubah. Saat saya masih anak-anak, saya ingin menjadi polisi, dokter, tentara. Saat remaja ingin menjadi youtuber. Lalu saat ini saya berkuliah di bidang IT, tetapi saya masih belum yakin dengan tujuan saya, saya ingin menjadi apa? Mohon bantuannya teman teman Pijar.",
                            style:
                                regularText14.copyWith(color: Colors.black54))
                      ],
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/icons/ic_chat.png", width: 20),
                            const SizedBox(width: 3),
                            Text("24",
                                style: regularText14.copyWith(
                                    color: Colors.black54))
                          ],
                        ),
                        const SizedBox(width: 8),
                        Row(
                          children: [
                            Image.asset("assets/icons/ic_seen.png", width: 20),
                            const SizedBox(width: 3),
                            Text("324",
                                style: regularText14.copyWith(
                                    color: Colors.black54))
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
