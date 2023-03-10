import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/create_news_controller.dart';

class CreateNewsView extends GetView<CreateNewsController> {
  const CreateNewsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CreateNewsView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'CreateNewsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
