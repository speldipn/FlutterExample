import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CarouselScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CarouselScreenScreen();
}

class _CarouselScreenScreen extends State<CarouselScreen> {
  var pageView = PageView(
      controller: PageController(initialPage: 0),
      children: [1, 2, 3, 4, 5]
          .map((number) => Image.asset(
                "asset/img/image_$number.jpeg",
                fit: BoxFit.cover,
              ))
          .toList());

  @override
  void initState() {
    super.initState();

    Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      var controller = pageView.controller;
      if (controller?.page?.toInt() == 4) {
        controller?.jumpToPage(controller.initialPage);
      } else {
        controller?.nextPage(
            duration: const Duration(seconds: 1), curve: Curves.easeInOut);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );

    return (Scaffold(
      body: pageView,
    ));
  }
}
