import 'package:flutter_app/models/publisher.dart';
import 'package:flutter_app/services/publisher_service.dart';
import 'package:get/get.dart';

class PublisherController extends GetxController {
  final PublisherService _publishersService = PublisherService();

  final isLoading = false.obs;

  final publishersList = <Publisher>[].obs;

  var publisher = Rxn<Publisher>();

  @override
  void onInit() {
    super.onInit();
    fetchPublishers();

  }

  Future<void> fetchPublishers() async {
    try {
      isLoading.value = true;
      final data = await _publishersService.fetchPublishers();
      publishersList.assignAll(data);
    } catch (e) {
      throw Exception('Error fetching news: $e');
      // Get.snackbar('Error', 'Failed to load news: $e');
    } finally {
      isLoading.value = false;
    }
  }

  Publisher? getPublisherById(int id) {
    return publishersList.firstWhereOrNull((s) => s.id == id);
  }

  // void getPublisherById(int id) async {
  //   publisher.value = publishersList.firstWhereOrNull((s) => s.id == id);
  // }
}
