import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

import 'package:get/get.dart';

import '../../share/button_widget.dart';
import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 700,
          width: 300,
          color: Colors.indigo,
          child: Column(
            children: [
              SizedBox(height: 250,),
              Center(
                child: Container(
                  height: 200,
                  width: 200,
                  child: ClipPath(
                    clipper: StarClipper(8),
                    child: Container(
                      height: 150,
                      color: Colors.blue,
                    ),
                  ),

                ),
              ),
              const Text("Stars News",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white),),

              SizedBox(height: 20,),
              Flexible(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                        child: ButtonWidget()
                    )

                  ],
                ),
              ),
            ],
          ),
          // child: Center(child: Text("+6", style: TextStyle(fontSize: 50),)),

        ),

        // child: Text(
        //   'SplashView is working',
        //   style: TextStyle(fontSize: 20),
        // ),
      ),
    );
  }
}
