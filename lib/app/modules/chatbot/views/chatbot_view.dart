import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pijarmahir/app/data/fonts.dart';

import '../controllers/chatbot_controller.dart';

class ChatbotView extends GetView<ChatbotController> {
  const ChatbotView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 3,
        shadowColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              "assets/images/img_chatbot.png",
              height: 50,
            ),
            Text(
              " Pijar Assistant",
              style: mediumText24,
            )
          ],
        ),
        centerTitle: false,
      ),
      body: const Center(
        child: Text(
          'ChatbotView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
