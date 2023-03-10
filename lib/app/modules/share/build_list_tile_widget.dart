import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../routes/app_pages.dart';
import '../home_page/controllers/home_page_controller.dart';

class CardWidget extends GetView<HomePageController> {
  const CardWidget(
      {super.key,
        required this.title,
        required this.description,
        required this.id});

  final String title, description, id;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(Routes.DETAIL_NEWS, arguments: {'id': id});
        print(id);
      },
      child: Container(
        margin: EdgeInsets.all(24),
        width: Get.width * 0.9,
        decoration: BoxDecoration(
            color: Color(0xFFFFFFFF), borderRadius: BorderRadius.circular(15)),
        padding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              trailing: IconButton(
                onPressed: () => controller.deleteNews(userId: controller.listNews.value.toString()),
                icon: Icon(Icons.close, color: Colors.black,),
              ),
            ),
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(
              height: 14,
            ),
            Text(description),
          ],
        ),
      ),
    );
  }
}