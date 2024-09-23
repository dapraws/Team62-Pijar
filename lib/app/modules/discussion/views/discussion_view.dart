import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pijarmahir/app/data/fonts.dart';
import 'package:pijarmahir/app/modules/article/views/article_view.dart';
import 'package:pijarmahir/app/modules/dashboard/views/dashboard_a_view.dart';
import 'package:pijarmahir/app/modules/dashboard/views/dashboard_view.dart';

import '../controllers/discussion_controller.dart';

class DiscussionView extends GetView<DiscussionController> {
  const DiscussionView({super.key});
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => DiscussionController());
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
              decoration: const BoxDecoration(color: Colors.white),
              child: Column(
                children: [
                  // Main Header
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "assets/images/img_pijar_logo.png",
                        height: 40,
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.chevron_left_rounded,
                          color: Color(0xFF79797F),
                          size: 40,
                        ),
                      )
                    ],
                  ),

                  // Profile
                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 8),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          radius: 30,
                          backgroundImage:
                              NetworkImage("https://picsum.photos/1000"),
                        ),
                        const SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Kirana Marani",
                              style: mediumText18,
                            ),
                            const SizedBox(height: 4),
                            Row(
                              children: [
                                Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(15, 8, 15, 8),
                                  decoration: BoxDecoration(
                                      color: const Color(0xFFE8DEF8),
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Text(
                                    "EXPLORER",
                                    style: mediumText16,
                                  ),
                                ),
                                const SizedBox(width: 15),
                                Row(
                                  children: [
                                    Image.asset(
                                      "assets/icons/ic_ranks.png",
                                      height: 25,
                                    ),
                                    Text(
                                      " 10",
                                      style: mediumText16.copyWith(
                                        fontSize: 17,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Image.asset("assets/icons/ic_beranda.png", height: 25),
              title: Text('Dashboard', style: regularText20),
              onTap: () {
                Get.to(() => const DashboardView());
              },
            ),
            Theme(
              data:
                  Theme.of(context).copyWith(dividerColor: Colors.transparent),
              child: ExpansionTile(
                leading: Image.asset("assets/icons/ic_menu.png", height: 25),
                title: Text("Program", style: regularText20),
                childrenPadding: const EdgeInsets.only(left: 20),
                children: [
                  ListTile(
                    leading: Image.asset("assets/icons/ic_pijar_mahir.png",
                        height: 25),
                    title: Text('Pijar Mahir', style: regularText20),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Image.asset("assets/icons/ic_pijar_prakerja.png",
                        height: 25),
                    title: Text('Pijar Prakerja', style: regularText20),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Image.asset("assets/icons/ic_pijar_camp.png",
                        height: 25),
                    title: Text('Pijar Camp', style: regularText20),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Image.asset("assets/icons/ic_pijar_business.png",
                        height: 25),
                    title: Text('Pijar Business', style: regularText20),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Image.asset("assets/icons/ic_pijar_ukm.png",
                        height: 25),
                    title: Text('Pijar for UKM', style: regularText20),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Image.asset("assets/icons/ic_lowongan.png", height: 25),
              title: Text('Lowongan Kerja', style: regularText20),
              onTap: () {},
            ),
            ListTile(
              leading: controller.selectedIndex == 0
                  ? Image.asset("assets/icons/ic_discussion_on.png", height: 25)
                  : Image.asset("assets/icons/ic_discussion.png", height: 25),
              title: controller.selectedIndex == 0
                  ? Text('Diskusi',
                      style: regularText20.copyWith(
                          color: const Color(0xFF3088C8)))
                  : Text('Diskusi', style: regularText20),
              onTap: () => controller.onTileTapped(0),
              tileColor:
                  controller.selectedIndex == 0 ? Colors.blue.shade100 : null,
              selected: controller.selectedIndex == 0,
              selectedTileColor: Colors.blue.shade100,
            ),
            ListTile(
              leading: Image.asset("assets/icons/ic_articles.png", height: 25),
              title: Text('Artikel', style: regularText20),
              onTap: () {
                Get.to(() => const ArticleView());
              },
            ),
            ListTile(
              leading: Image.asset("assets/icons/ic_help.png", height: 25),
              title: Text('Bantuan', style: regularText20),
              onTap: () {},
            ),
            const Divider(
              color: Colors.grey,
            ),
            ListTile(
              leading: Image.asset("assets/icons/ic_exit.png", height: 25),
              title: Text('Keluar', style: regularText20),
              onTap: () {
                Get.to(() => const DashboardAView());
              },
            ),
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
            SizedBox(
              height: 48,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: controller.filter.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {},
                    child: Card(
                      elevation: 3,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 8),
                        decoration: BoxDecoration(
                          color: const Color(0xFFF2F2F5),
                          border: Border.all(color: const Color(0xFF3088C8)),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(
                          controller.filter[index],
                          style: mediumText16.copyWith(
                              color: const Color(0xFF3088C8)),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 8),

            // List Discussion
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                // physics: const NeverScrollableScrollPhysics(),
                itemCount: controller.discussion.length,
                itemBuilder: (context, index) {
                  final item = controller.discussion[index];
                  return Card(
                    color: Colors.white,
                    elevation: 5,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 20),
                      child: Column(
                        children: [
                          // Profile
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                radius: 30.0,
                                backgroundColor: Colors.transparent,
                                backgroundImage:
                                    NetworkImage(item["image"] ?? ''),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(item["name"] ?? '',
                                        style: regularText18),
                                    Text(item["occupation"] ?? '',
                                        style: regularText16.copyWith(
                                            color: Colors.black54))
                                  ],
                                ),
                              ),
                              Text(item["date"] ?? '',
                                  style: regularText16.copyWith(
                                      color: Colors.black54))
                            ],
                          ),
                          const SizedBox(height: 12),

                          // Discussion
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(item["question"] ?? '',
                                  style: regularText18),
                              const SizedBox(height: 8),
                              Text(item["detail"] ?? '',
                                  style: regularText14.copyWith(
                                      color: Colors.black54)),
                            ],
                          ),
                          const SizedBox(height: 15),

                          // Interaction Row
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Row(
                                children: [
                                  Image.asset("assets/icons/ic_chat.png",
                                      width: 20),
                                  const SizedBox(width: 3),
                                  Text("24",
                                      style: regularText14.copyWith(
                                          color: Colors.black54)),
                                ],
                              ),
                              const SizedBox(width: 8),
                              Row(
                                children: [
                                  Image.asset("assets/icons/ic_seen.png",
                                      width: 20),
                                  const SizedBox(width: 3),
                                  Text("324",
                                      style: regularText14.copyWith(
                                          color: Colors.black54)),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
