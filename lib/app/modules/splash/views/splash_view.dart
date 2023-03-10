import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../share/button_widget.dart';
import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(image: AssetImage('assets/images/ic_star.png')),
              SizedBox(height: 20),
              Text("Stars News"),

              ButtonWidget(),

            ],
          ),


        ),
      ),
    );
  }
}
