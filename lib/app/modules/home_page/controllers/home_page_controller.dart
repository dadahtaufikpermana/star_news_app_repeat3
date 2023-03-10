import 'package:get/get.dart';
import 'package:logger/logger.dart';
import '../../../data/news_service.dart';
import '../../../models/list_news_model.dart';

class HomePageController extends GetxController {
  RxBool isLoading = false.obs;
  RxList<ListNewsModel> listNews = <ListNewsModel>[].obs;
  final newsService = NewsService();

  @override
  void onInit() {
    super.onInit();
    getListNews();
  }

  Future<void> refreshListNews() async{
    listNews.clear();
    await getListNews();
  }

  Future<void> getListNews() async{
    isLoading.toggle();
    try{
      final response = await NewsService().getNews();
      // listNews.clear();
      listNews.addAll(response as Iterable<ListNewsModel>);
      isLoading.toggle();
    } catch(e){
      isLoading.toggle();
      Get.snackbar("Error", e.toString());
    }
  }

  Future deleteNews({required String userId}) async{
    isLoading.toggle();
    try{
      final response = await NewsService().deleteNewsService(id: userId);
      Logger().d(response);
      await refreshListNews();
      isLoading.toggle();
      Get.snackbar("Deleted", "You have deleted article!");
    } catch(e){
      isLoading.toggle();
      Get.snackbar("Error", e.toString());
    }
  }
}
