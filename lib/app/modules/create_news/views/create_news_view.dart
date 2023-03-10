import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../share/form_widget.dart';
import '../controllers/create_news_controller.dart';

class CreateNewsView extends GetView<CreateNewsController> {
  const CreateNewsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        leading: IconButton(
            onPressed: () {
              Get.back();
            }, icon: Icon(Icons.arrow_back_ios, color: Colors.black,)),
      elevation: 0,
        title: Text("StarNews", style: TextStyle(color: Colors.black),),
      ),
      body: FormWidget(),
    );
  }
}
