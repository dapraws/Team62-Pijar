import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pijarmahir/app/data/fonts.dart';

import '../controllers/dashboard_controller.dart';

class DashboardAView extends GetView<DashboardController> {
  const DashboardAView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 3,
        shadowColor: Colors.black,
        title: Image.asset(
          "assets/images/img_pijar_logo.png",
          height: 35,
        ),
        centerTitle: false,
        actions: [
          // Login Tapped
          InkWell(
            splashColor: Colors.transparent,
            onTap: () {
              controller.onLoginTapped();
            },
            child: Obx(() {
              return Center(
                  child: controller.isLoading.value
                      ? Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: const SizedBox(
                              height: 20,
                              width: 20,
                              child: CircularProgressIndicator(
                                color: Color(0xFF3088C8),
                              )),
                        )
                      : Container(
                          padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                          decoration: BoxDecoration(
                              color: const Color(0xFF3088C8),
                              border:
                                  Border.all(color: const Color(0xFF3088C8)),
                              borderRadius: BorderRadius.circular(5)),
                          child: Text("Login",
                              style:
                                  mediumText16.copyWith(color: Colors.white))));
            }),
          ),
          const SizedBox(width: 8),
          Container(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: const Color(0xFF3088C8)),
                  borderRadius: BorderRadius.circular(5)),
              child: Text("Daftar",
                  style:
                      mediumText16.copyWith(color: const Color(0xFF3088C8)))),
          const SizedBox(width: 16),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // HERO Banner
            Container(
              child: Image.asset("assets/images/img_pijar_ads.png"),
            ),

            // About
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    flex: 1,
                    child: Text(
                      "Tentang Pijar",
                      style: mediumText24.copyWith(fontSize: 27),
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: Text(
                      "Platform pembelajaran dan sertifikasi secara digital yang memberikan kemudahan akses bagi masyarakat dalam meningkatkan keahlian dan kompetensinya serta sesuai dengan kebutuhan Industri pada saat ini maupun mendatang. Masyarakat dapat melakukan pembelajaran dengan mudah baik secara online maupun offline melalui platform ini.",
                      style: regularText14,
                    ),
                  )
                ],
              ),
            ),

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

            // Ads Banner
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Image.asset("assets/images/img_ads_banner.png"),
            ),

            // Partners
            Container(
              padding: const EdgeInsets.fromLTRB(16, 30, 16, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Mitra Kerjasama",
                    style: mediumText24,
                  ),
                  GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 16.0,
                      mainAxisSpacing: 0.8,
                      childAspectRatio: 1,
                    ),
                    itemCount: controller.partners.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(controller.partners[index], width: 80),
                        ],
                      );
                    },
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
                  Padding(
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
                              left: 16.0, right: 0.0, bottom: 20),
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
          ],
        ),
      ),
    );
  }
}
