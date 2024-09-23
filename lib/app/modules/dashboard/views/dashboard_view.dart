import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:pijarmahir/app/data/fonts.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
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
              leading: controller.selectedIndex == 0
                  ? Image.asset("assets/icons/ic_beranda_on.png", height: 25)
                  : Image.asset("assets/icons/ic_beranda.png", height: 25),
              title: controller.selectedIndex == 0
                  ? Text('Beranda',
                      style: regularText20.copyWith(
                          color: const Color(0xFF3088C8)))
                  : Text('Beranda', style: regularText20),
              onTap: () => controller.onTileTapped(0),
              tileColor:
                  controller.selectedIndex == 0 ? Colors.blue.shade100 : null,
              selected: controller.selectedIndex == 0,
              selectedTileColor: Colors.blue.shade100,
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
              leading:
                  Image.asset("assets/icons/ic_discussion.png", height: 25),
              title: Text('Diskusi', style: regularText20),
              onTap: () {},
            ),
            ListTile(
              leading: Image.asset("assets/icons/ic_articles.png", height: 25),
              title: Text('Artikel', style: regularText20),
              onTap: () {},
            ),
            ListTile(
              leading: Image.asset("assets/icons/ic_help.png", height: 25),
              title: Text('Bantuan', style: regularText20),
              onTap: () {},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 3,
        shadowColor: Colors.black,
        title: Text('Dashboard', style: mediumText24),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            // HERO Banner
            Container(
              child: Image.asset("assets/images/img_pijar_ads.png"),
            ),
            const SizedBox(height: 30),

            // Category Grid
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 20.0,
                  childAspectRatio: 0.7,
                ),
                itemCount: controller.categories.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(controller.categories[index]["image"]!,
                          width: 80),
                      const SizedBox(height: 8),
                      Text(
                        controller.categories[index]["name"]!,
                        style: mediumText16,
                        textAlign: TextAlign.center,
                      )
                    ],
                  );
                },
              ),
            ),

            // Recommendation
            Container(
              padding: const EdgeInsets.fromLTRB(0, 0, 16, 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      "Rekomendasi untukmu",
                      style: mediumText24,
                    ),
                  ),
                  const SizedBox(height: 16),
                  ConstrainedBox(
                    constraints: const BoxConstraints(
                      minHeight: 35.0,
                      maxHeight: 380.0,
                    ),
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: controller.reviews.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          margin: const EdgeInsets.only(
                              left: 16.0, right: 0.0, bottom: 20),
                          color: Colors.white,
                          elevation: 5,
                          child: Container(
                            width: 280,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.vertical(
                                      top: Radius.circular(10)),
                                  child: Image.asset(
                                    controller.recommendation[index]["image"]!,
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(16),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      // Title
                                      Text(
                                        controller.recommendation[index]
                                            ["title"]!,
                                        style: mediumText18,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      const SizedBox(height: 4),

                                      // Detail
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            padding: const EdgeInsets.fromLTRB(
                                                30, 8, 30, 8),
                                            decoration: BoxDecoration(
                                                color: const Color(0xFFABFF94),
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            child: Text(
                                              "ONLINE",
                                              style: regularText16.copyWith(
                                                  color:
                                                      const Color(0xFF28B53B)),
                                            ),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.fromLTRB(
                                                20, 8, 20, 8),
                                            child: Text(
                                              "Pijar Mahir",
                                              style: regularText16.copyWith(
                                                  color: Colors.black54),
                                            ),
                                          )
                                        ],
                                      ),
                                      const SizedBox(height: 4),

                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          const Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Icon(Icons.star,
                                                  color: Colors.yellow,
                                                  size: 30),
                                              Icon(Icons.star,
                                                  color: Colors.yellow,
                                                  size: 30),
                                              Icon(Icons.star,
                                                  color: Colors.yellow,
                                                  size: 30),
                                              Icon(Icons.star,
                                                  color: Colors.yellow,
                                                  size: 30),
                                              Icon(Icons.star,
                                                  color: Colors.yellow,
                                                  size: 30)
                                            ],
                                          ),
                                          const SizedBox(width: 8),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                "5.0",
                                                style: regularText18,
                                              ),
                                              const SizedBox(width: 4),
                                              Text(
                                                "(2)",
                                                style: regularText16.copyWith(
                                                    color: Colors.grey),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      const SizedBox(height: 8),

                                      Text(
                                        controller.recommendation[index]
                                            ["price"]!,
                                        style: semiBoldText22,
                                      )
                                    ],
                                  ),
                                )
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

            // Bundling
            Container(
              padding: const EdgeInsets.fromLTRB(0, 0, 16, 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      "Best Deals",
                      style: mediumText22,
                    ),
                  ),
                  const SizedBox(height: 12),
                  ConstrainedBox(
                    constraints: const BoxConstraints(
                      minHeight: 35.0,
                      maxHeight: 265.0,
                    ),
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: controller.reviews.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          margin: const EdgeInsets.only(
                              left: 16.0, right: 0.0, bottom: 20),
                          color: Colors.white,
                          elevation: 5,
                          child: Container(
                            width: 350,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.vertical(
                                      top: Radius.circular(10)),
                                  child: Image.asset(
                                    controller.bundling[index]["image"]!,
                                  ),
                                ),
                                Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(12, 8, 12, 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      // Price
                                      Container(
                                        padding: const EdgeInsets.fromLTRB(
                                            8, 5, 8, 5),
                                        decoration: BoxDecoration(
                                            color: const Color(0xFFD6E7F4),
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: Text(
                                          controller.bundling[index]["price"]!,
                                          style: regularText16.copyWith(
                                              color: const Color(0xFF3088C8)),
                                        ),
                                      ),
                                      const SizedBox(height: 8),

                                      Text(
                                        controller.bundling[index]["title"]!,
                                        style: regularText18,
                                      ),

                                      Text(
                                        controller.bundling[index]["bundle"]!,
                                      )
                                    ],
                                  ),
                                )
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

            // Review
            Container(
              padding: const EdgeInsets.fromLTRB(0, 0, 16, 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      "Dengarkan kisah inspiratif mereka",
                      style: mediumText20,
                    ),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    height: 300,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: controller.reviews.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          margin: const EdgeInsets.only(
                              left: 16.0, right: 8.0, bottom: 20),
                          color: Colors.white,
                          elevation: 5,
                          child: Container(
                            width: 280,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 20),
                            child: Column(
                              children: [
                                // Profile
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CircleAvatar(
                                      radius: 30.0,
                                      backgroundColor: Colors.transparent,
                                      backgroundImage: NetworkImage(
                                          controller.reviews[index]['photo']!),
                                    ),
                                    const SizedBox(width: 10),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            controller.reviews[index]['name']!,
                                            style: regularText18,
                                          ),
                                          Text(
                                            controller.reviews[index]
                                                ['jobTitle']!,
                                            style: regularText16.copyWith(
                                                color: Colors.black54),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 12),

                                // Review Text
                                Column(
                                  children: [
                                    Text(
                                      controller.reviews[index]['title']!,
                                      style: mediumText18,
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      controller.reviews[index]['review']!,
                                      style: regularText14.copyWith(
                                          color: Colors.black87),
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
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

            // Article
            Container(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Artikel Pijar",
                    style: mediumText22,
                  ),
                  const SizedBox(height: 12),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: controller.articles.length,
                    itemBuilder: (BuildContext context, int index) {
                      // Example articles data (replace with your dynamic data from controller)
                      return Card(
                        color: Colors.white,
                        elevation: 5,
                        margin: const EdgeInsets.only(bottom: 16.0),
                        child: SizedBox(
                          height: 100,
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.horizontal(
                                    left: Radius.circular(0)),
                                child: Image.asset(
                                  controller.articles[index]["image"]!,
                                  width: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        controller.articles[index]["title"]!,
                                        style: regularText16,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Text(
                                        controller.articles[index]["date"]!,
                                        style: regularText14.copyWith(
                                            color: Colors.black54),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
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
