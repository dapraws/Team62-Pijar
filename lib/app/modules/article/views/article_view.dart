import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:pijarmahir/app/data/fonts.dart';

import '../controllers/article_controller.dart';

class ArticleView extends GetView<ArticleController> {
  const ArticleView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
        title: Text('Artikel', style: mediumText24),
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
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
          child: Column(
            children: [
              // Image
              Stack(
                children: [
                  Image.asset("assets/images/img_article_2.png"),
                  Container(
                    margin: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                      color: Colors.black38,
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                    child: const Icon(
                      Icons.chevron_left,
                      size: 50,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 16),

              // Title
              Text(
                "Menavigasi Karir di Era Digital: Tips dan Trik untuk Pemula",
                style: mediumText22,
              ),

              const SizedBox(height: 8),

              // Author & Date
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IntrinsicHeight(
                    child: Row(
                      children: [
                        const CircleAvatar(
                          radius: 15,
                          backgroundImage:
                              NetworkImage("https://picsum.photos/200"),
                        ),
                        Text(
                          " Titik Rahmasari",
                          style: regularText14.copyWith(color: Colors.black54),
                        ),
                        Text(
                          "  •  ",
                          style: boldText12.copyWith(color: Colors.black54),
                        ),
                        Text(
                          "10 Sept 2023",
                          style: regularText14.copyWith(color: Colors.black54),
                        ),
                      ],
                    ),
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
              ),

              const SizedBox(height: 8),

              // Article Content
              Column(
                children: [
                  Text(
                    "              Di era digital yang serba cepat ini, menavigasi karir menjadi tantangan tersendiri, terutama bagi mereka yang baru memulai. Dunia pekerjaan terus berubah, dengan teknologi baru dan cara kerja yang berbeda dibandingkan dekade sebelumnya. Bagi pemula, penting untuk memiliki pemahaman yang kuat tentang keterampilan digital dan adaptasi terhadap perubahan. Ini termasuk pemahaman tentang alat-alat teknologi terbaru, serta kemampuan untuk belajar dan beradaptasi dengan cepat.\n",
                    style: regularText14,
                  ),
                  Text(
                    "              Salah satu langkah pertama yang bisa diambil adalah mengidentifikasi minat dan keterampilan yang dimiliki. Mengetahui apa yang membuat Anda bersemangat akan membantu Anda menentukan jalur karir yang tepat. Selanjutnya, cobalah untuk mengembangkan keterampilan yang dibutuhkan di bidang tersebut melalui kursus online, magang, atau proyek sampingan. Jangan lupa untuk membangun portofolio yang menunjukkan kemampuan dan pencapaian Anda, karena ini sering kali menjadi salah satu faktor penentu bagi pemberi kerja.\n",
                    style: regularText14,
                  ),
                  Text(
                    "             Selain itu, jaringan profesional adalah aset penting dalam dunia kerja saat ini. Membangun koneksi melalui platform seperti LinkedIn atau menghadiri acara industri dapat membuka peluang baru yang mungkin tidak Anda temukan di tempat lain. Jangan takut untuk bertanya dan mencari saran dari para profesional yang lebih berpengalaman. Dengan terus belajar dan beradaptasi, Anda dapat menavigasi dunia karir dengan lebih percaya diri dan sukses.\n",
                    style: regularText14,
                  ),
                ],
              ),

              const Divider(),

              // Comments
              Container(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Komentar",
                      style: mediumText24,
                    ),
                    const SizedBox(height: 16.0),
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 30,
                          backgroundImage:
                              NetworkImage("https://picsum.photos/300"),
                        ),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            padding: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 8),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: const Color(0xFFD2D2D4)),
                                borderRadius: BorderRadius.circular(5),
                                color: const Color(0xFFF2F2F5)),
                            child: Text(
                              "Tambahkan komentar. . .",
                              style: regularText14.copyWith(
                                  color: const Color(0xFF79797F)),
                            ),
                          ),
                        ),
                        const Icon(
                          Icons.send,
                          color: Color(0xFF79797F),
                        )
                      ],
                    ),
                    const SizedBox(height: 16.0),

                    // Comments item
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const CircleAvatar(
                                radius: 20,
                                backgroundImage:
                                    NetworkImage("https://picsum.photos/1000"),
                              ),
                              Text(
                                " Jajang",
                                style: regularText14.copyWith(
                                    color: Colors.black54),
                              ),
                              Text(
                                "  •  ",
                                style:
                                    boldText12.copyWith(color: Colors.black54),
                              ),
                              Text(
                                "3 hari lalu",
                                style: regularText14.copyWith(
                                    color: Colors.black54),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "Sangat bermanfaat. Terima kasih!",
                            style: regularText16,
                          ),
                          const SizedBox(height: 8),
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
                              const SizedBox(width: 20),
                              const Icon(
                                Icons.chat_outlined,
                                size: 25,
                              ),
                              Text(
                                " 0",
                                style: regularText16,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const Divider(),

              // Others article
              Container(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Artikel Lainnya",
                      style: mediumText22,
                    ),
                    const SizedBox(height: 16),
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
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8.0),
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
      ),
    );
  }
}
