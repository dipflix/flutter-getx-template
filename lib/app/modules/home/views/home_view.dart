import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:project/app/modules/login/views/login_view.dart';
import 'package:project/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          MaterialButton(
            onPressed: () =>
                Get.to(const LoginView(), arguments: {"title": 'login'}),
            child: Text("Go to login"),
          ),
          MaterialButton(
            onPressed: () => controller.count.value += 1,
            child: Text("Go to werwer"),
          ),
          Center(
            child: Obx(
              () => Text(
                controller.count.obs.toString(),
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
