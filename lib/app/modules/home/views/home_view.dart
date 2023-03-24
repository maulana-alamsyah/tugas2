import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  double widthDevice = Get.width;
  double heightDevice = Get.height;
  // const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double paddingTop = context.mediaQueryPadding.top;
    double paddingBottom = context.mediaQueryPadding.bottom;
   
    AppBar myAppBar(){
      return AppBar(
        title: Text('HOME'),
      );
    }

    double heightBody = context.height - myAppBar().preferredSize.height - paddingTop;

    return Scaffold(
      appBar:  myAppBar(),
      body: Container(
        width: Get.width,
        height: Get.height,
        color: Colors.blue,
        child: LayoutBuilder(builder: (context, constraints){
          double lebarKuning = constraints.maxWidth;
          double tinggiKuning = constraints.maxHeight;

          return Center(child: Stack(
            children: [
              Container(
                width: lebarKuning * 0.3,
                height: tinggiKuning * 0.3,
                color: Colors.red,
              )
            ],
          ));
        }),
      ),
    );
  }
}
