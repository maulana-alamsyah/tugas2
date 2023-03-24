import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/box_controller.dart';

class BoxView extends GetView<BoxController> {
  double width = Get.width;
  double height = Get.height;
  
  @override
  Widget build(BuildContext context) {
    double paddingTop = context.mediaQueryPadding.top;
    double paddingBottom = context.mediaQueryPadding.bottom;

    AppBar myAppBar(){
      return AppBar(
        title: const Text('Hom'),
      );
    }

    double heightBody = context.height - myAppBar().preferredSize.height - paddingTop;

    return Scaffold(
      appBar: myAppBar(),
      body: Column(
        children: [
          Row(children: [
            ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: 150,
                maxWidth: 350,
                minHeight: 100,
                minWidth: 300
                ),
              child: Container(
                height: 10000,
                color: Colors.red,
                child: Center(child: Text('1', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),)),
              ),
            ),
            ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: 150,
                maxWidth: 350,
                minHeight: 100,
                minWidth: 300
                ),
              child: Container(
                height: 10000,
                color: Colors.blue,
                child: Center(child: Text('2', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),)),
              ),
            ),
            ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: 150,
                maxWidth: 350,
                minHeight: 100,
                minWidth: 300
                ),
              child: Container(
                height: 10000,
                color: Colors.amber,
                child: Center(child: Text('3', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),)),
              ),
            ),
          ],),
          Row(
            children: [
              ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: 150,
              maxWidth: 1050,
              minHeight: 100,
              minWidth: 900
              ),
            child: Container(
              height: 10000,
              color: Colors.black,
              child: Center(child: Text('4', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),)),
            ),
          ),
            ],
          ),
        ],
      )
    );
  }
}
