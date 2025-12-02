import 'package:flutter/material.dart';
import 'package:flutter_app/presentation/controllers/user_controller.dart';
import 'package:get/get.dart';

class WelcomeHeaderWidget extends StatelessWidget {
  WelcomeHeaderWidget({super.key});

  final UserController userController = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (userController.isLoading.value) {
        return Center(child: CircularProgressIndicator());
      }

      final user = userController.user.value!;
      return Padding(
        padding: EdgeInsets.only(top: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome back, ${user.name}!",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            SizedBox(height: 6),
            Text(
              "Discover a world of news that matters to you",
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ],
        ),
      );
    });
  }
}
