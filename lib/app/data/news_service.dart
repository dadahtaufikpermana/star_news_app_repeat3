import 'package:get/get.dart';
import 'package:get/get_connect/connect.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:logger/logger.dart';
import 'package:star_news_app_repeat3/app/models/create_news_model.request.dart';

import '../models/list_news_model.dart';

class NewsService {
  final _connect = Get.find<GetConnect>();

  Future<List> getNews() async {
    final response = await _connect.get('posts',
    decoder: (data) => List<ListNewsModel>.from(data.map((x) => ListNewsModel.fromJson(x))));
    if (!response.hasError) {
      return response.body!;
    } else {
      throw Get.snackbar('Error', response.statusCode.toString());
    }
  }

  Future postNews(
  {required String title, required String desc, required userId}) async{
    final response = await _connect.post('posts',
        CreateNewsModelRequest(title: title, body: desc, userId: int.parse(userId)).toJson()
    );
    if(!response.hasError){
      Logger().d(response.statusCode);
      return response.body!;
    } else{
      throw Get.snackbar("Error", response.statusCode.toString());
    }
  }

  Future getDetailNews({required String id}) async {
    print('p');
    final response = await _connect.get('posts/$id');
    if (!response.hasError) {
      return response.body!;
    } else {
      throw Get.snackbar('Error', response.statusCode.toString());
    }
  }

  Future deleteNewsService({required String id}) async {
    final response = await _connect.delete('posts/$id');
    Logger().d(response.statusCode);
    if (!response.hasError) {
      return response.body!;
    } else {
      throw Get.snackbar("Error", response.statusCode.toString());
    }
  }
}