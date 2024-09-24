import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:pijarmahir/app/data/fonts.dart';

import '../controllers/dashboard_controller.dart';

class DetailCourseView extends GetView<DashboardController> {
  const DetailCourseView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 3,
        shadowColor: Colors.black,
        title: Text('Dashboard', style: mediumText24),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Course Video
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "assets/images/img_course_1.png",
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 16),
              // Header
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                        decoration: BoxDecoration(
                            color: const Color(0xFFABFF94),
                            borderRadius: BorderRadius.circular(20)),
                        child: Text(
                          "ONLINE",
                          style: regularText14.copyWith(
                              color: const Color(0xFF28B53B)),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Row(
                        children: [
                          Image.asset("assets/icons/ic_video_course.png",
                              width: 25),
                          const SizedBox(width: 5),
                          Text(
                            "PEMBELAJARAN MANDIRI",
                            style: mediumText14.copyWith(
                              color: const Color(0xFF3088C8),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("How Those Businesses Use AI", style: mediumText22),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Pijar Mahir",
                            style:
                                regularText14.copyWith(color: Colors.black54),
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.share,
                                size: 18,
                                color: Color(0xFF3088C8),
                              ),
                              Text(
                                " Bagikan",
                                style: mediumText16.copyWith(
                                    color: const Color(0xFF3088C8)),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 8),
                  Column(
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/icons/ic_person.png", width: 20),
                          Text(
                            "  Usia",
                            style:
                                regularText14.copyWith(color: Colors.black54),
                          ),
                          Text(
                            " 18-64 tahun",
                            style: mediumText16,
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          Image.asset("assets/icons/ic_college.png", width: 20),
                          Text(
                            "  Minimal",
                            style:
                                regularText14.copyWith(color: Colors.black54),
                          ),
                          Text(
                            " SMA/SMK sederajat",
                            style: mediumText16,
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),

              const Divider(height: 50),

              // Detail
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Detail Pelatihan",
                    style: mediumText22,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Deskripsi",
                    style: mediumText18,
                  ),
                  Text(
                    "Dalam beberapa tahun terakhir, Artificial Intelligence (AI) telah menjadi salah satu teknologi yang paling berpengaruh di dunia bisnis. Dari otomatisasi proses hingga personalisasi layanan, AI telah membawa perubahan signifikan dalam cara bisnis beroperasi. Pembelajaran mandiri \"How Those Businesses Use AI\" ini dirancang untuk membantu peserta memahami bagaimana berbagai perusahaan, baik besar maupun kecil, memanfaatkan AI untuk meningkatkan efisiensi, mengurangi biaya, dan memberikan pengalaman yang lebih baik kepada pelanggan. \n\nPeserta akan diajak untuk mengeksplorasi berbagai sektor yang telah sukses menerapkan AI, seperti retail, kesehatan, keuangan, dan manufaktur. Melalui studi kasus nyata, peserta dapat melihat secara langsung bagaimana teknologi seperti Machine Learning, Natural Language Processing, dan Computer Vision digunakan untuk menyelesaikan tantangan bisnis sehari-hari. Selain itu, pembelajaran ini akan membahas manfaat yang dapat diperoleh dari penerapan AI, tantangan yang mungkin dihadapi, serta bagaimana mempersiapkan bisnis Anda untuk mengadopsi AI secara efektif.",
                    style: regularText14,
                  )
                ],
              ),

              const Divider(height: 50),

              // Benefit
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Benefit yang Didapat",
                    style: mediumText22,
                  ),
                  const SizedBox(height: 20),
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        decoration: BoxDecoration(
                            color: const Color(0xFFDCFFD2),
                            border: Border.all(color: const Color(0xFF28B53B)),
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/icons/ic_check.png",
                              height: 20,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              "Video Recording",
                              style: regularText18,
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        decoration: BoxDecoration(
                            color: const Color(0xFFDCFFD2),
                            border: Border.all(color: const Color(0xFF28B53B)),
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/icons/ic_check.png",
                              height: 20,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              "Tes Evaluasi Pelatihan",
                              style: regularText18,
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        decoration: BoxDecoration(
                            color: const Color(0xFFDCFFD2),
                            border: Border.all(color: const Color(0xFF28B53B)),
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/icons/ic_check.png",
                              height: 20,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              "Sertifikasi Penyelesaian",
                              style: regularText18,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              const Divider(height: 50),

              // Materi
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Materi Pelatihan",
                    style: mediumText22,
                  ),
                  const SizedBox(height: 20),
                  // Materi Pelatihan Item
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: controller.materi.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 10),
                        decoration: BoxDecoration(
                            color: const Color(0xFFF2F2F5),
                            border: Border.all(color: const Color(0xFFD2D2D4)),
                            borderRadius: BorderRadius.circular(10)),
                        child: ExpandablePanel(
                          header: Text(
                            controller.materi[index]["header"]!,
                            style: mediumText18,
                          ),
                          collapsed: Text(
                            controller.materi[index]["collapsed"]!,
                            softWrap: true,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: regularText16,
                          ),
                          expanded: Text(
                            controller.materi[index]["expanded"]!,
                            softWrap: true,
                            style: regularText16,
                          ),
                        ),
                      );
                    },
                  )
                ],
              ),

              const Divider(height: 50),

              // Rating
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Rating dan Ulasan",
                    style: mediumText22,
                  ),
                  const SizedBox(height: 20),
                  IntrinsicHeight(
                    child: Row(
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 60,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "4.8",
                                      style: semiBoldText24,
                                    ),
                                    Text(
                                      "/5.0",
                                      style: mediumText16.copyWith(
                                          color: Colors.black54),
                                    ),
                                  ],
                                ),
                                Text(
                                  "(47 Rating)",
                                  style: regularText14.copyWith(
                                      color: Colors.black54),
                                )
                              ],
                            )
                          ],
                        ),
                        const VerticalDivider(),
                        Column(
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                Text(
                                  " 5",
                                  style: mediumText16,
                                ),
                                LinearPercentIndicator(
                                  width: 150.0,
                                  lineHeight: 6.0,
                                  percent: 39 / 47,
                                  backgroundColor: const Color(0xFFD2D2D4),
                                  progressColor: Colors.yellow,
                                  barRadius: const Radius.circular(10),
                                ),
                                Text(
                                  " 29",
                                  style: regularText16.copyWith(
                                      color: Colors.black54),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                Text(
                                  " 4",
                                  style: mediumText16,
                                ),
                                LinearPercentIndicator(
                                  width: 150.0,
                                  lineHeight: 6.0,
                                  percent: 5 / 47,
                                  backgroundColor: const Color(0xFFD2D2D4),
                                  progressColor: Colors.yellow,
                                  barRadius: const Radius.circular(10),
                                ),
                                Text(
                                  " 5",
                                  style: regularText16.copyWith(
                                      color: Colors.black54),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                Text(
                                  " 3",
                                  style: mediumText16,
                                ),
                                LinearPercentIndicator(
                                  width: 150.0,
                                  lineHeight: 6.0,
                                  percent: 3 / 47,
                                  backgroundColor: const Color(0xFFD2D2D4),
                                  progressColor: Colors.yellow,
                                  barRadius: const Radius.circular(10),
                                ),
                                Text(
                                  " 3",
                                  style: regularText16.copyWith(
                                      color: Colors.black54),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                Text(
                                  " 2",
                                  style: mediumText16,
                                ),
                                LinearPercentIndicator(
                                  width: 150.0,
                                  lineHeight: 6.0,
                                  percent: 0 / 47,
                                  backgroundColor: const Color(0xFFD2D2D4),
                                  progressColor: Colors.yellow,
                                  barRadius: const Radius.circular(10),
                                ),
                                Text(
                                  " 0",
                                  style: regularText16.copyWith(
                                      color: Colors.black54),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                Text(
                                  " 1",
                                  style: mediumText16,
                                ),
                                LinearPercentIndicator(
                                  width: 150.0,
                                  lineHeight: 6.0,
                                  percent: 0 / 47,
                                  backgroundColor: const Color(0xFFD2D2D4),
                                  progressColor: Colors.yellow,
                                  barRadius: const Radius.circular(10),
                                ),
                                Text(
                                  " 0",
                                  style: regularText16.copyWith(
                                      color: Colors.black54),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 25),
                  Card(
                    color: Colors.white,
                    elevation: 5,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const CircleAvatar(
                                    radius: 20,
                                    backgroundImage: NetworkImage(
                                        "https://picsum.photos/1000"),
                                  ),
                                  const SizedBox(width: 8),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Budi Siregar",
                                        style: mediumText18,
                                      ),
                                      Text(
                                        "1 hari lalu",
                                        style: regularText14.copyWith(
                                            color: Colors.black54),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Container(
                                padding: const EdgeInsets.fromLTRB(2, 3, 4, 3),
                                decoration: BoxDecoration(
                                    color: Colors.yellow[100],
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(5))),
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    Text(
                                      "5",
                                      style: mediumText14,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "Sangat bermanfaat. Terima kasih!",
                            style: regularText16,
                          ),
                          const SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const Icon(
                                    Icons.thumb_up_alt_outlined,
                                    size: 25,
                                  ),
                                  Text(
                                    " 1",
                                    style: regularText16,
                                  ),
                                ],
                              ),
                              Text(
                                "Laporkan",
                                style: regularText16.copyWith(
                                    color: Colors.black54),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const Divider(height: 50),

              Container(
                padding: const EdgeInsets.fromLTRB(0, 0, 16, 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Text(
                        "Serupa dengan kelas ini",
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
                          return GestureDetector(
                            onTap: () {
                              Get.to(() => const DetailCourseView());
                            },
                            child: Card(
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
                                        controller.recommendation[index]
                                            ["image"]!,
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
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        30, 8, 30, 8),
                                                decoration: BoxDecoration(
                                                    color:
                                                        const Color(0xFFABFF94),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20)),
                                                child: Text(
                                                  "ONLINE",
                                                  style: regularText16.copyWith(
                                                      color: const Color(
                                                          0xFF28B53B)),
                                                ),
                                              ),
                                              Container(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
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
                                                    style:
                                                        regularText16.copyWith(
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
      ),
    );
  }
}
