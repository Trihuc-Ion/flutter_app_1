import 'package:flutter_app/models/news.dart';
import 'package:flutter_app/services/news_service.dart';
import 'package:get/get.dart';

class NewsController extends GetxController {
  final NewsService _newsService = NewsService();

  final isLoading = false.obs;

  final newsList = <News>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchNews();
  }

  Future<void> fetchNews() async {
    try {
      isLoading.value = true;
      final data = await _newsService.fetchNews();
      newsList.assignAll(data);
    } catch (e) {
      throw Exception('Error fetching news: $e');
      // Get.snackbar('Error', 'Failed to load news: $e');
    } finally {
      isLoading.value = false;
    }
  }

  List<News> getNewsByPublisherId(int publisherId) {
    return newsList.where((news) => news.publisherId == publisherId).toList();
  }
}
