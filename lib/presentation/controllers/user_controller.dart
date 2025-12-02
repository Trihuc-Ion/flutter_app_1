import 'package:flutter_app/models/user.dart';
import 'package:flutter_app/services/user_service.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  final UserService _userService = UserService();

  final isLoading = false.obs;

  final user = Rxn<User>();

  @override
  void onInit() {
    super.onInit();
    loadUser();
  }

  Future<void> loadUser() async {
    try {
      isLoading.value = true;
      final data = await _userService.getCurrentUser();
      user.value = data;
    } catch (e) {
      // throw Exception('Error loading user: $e');
      Get.snackbar('Error', 'Failed to load user: $e');
    } finally {
      isLoading.value = false;
    }
  }
}
