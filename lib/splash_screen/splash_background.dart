import 'package:flutter/cupertino.dart';
import 'package:iec_group/constants/image_path.dart';

Widget SplashBackground(context) {
  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.width;
  return Stack(
    children: [
      Positioned.fill(
          child: Align(
        alignment: Alignment.topLeft,
        child: Image.asset(
          ellipse,
        ),
      )),
      Positioned.fill(
          left: width / 1.5,
          top: height / 100,
          bottom: height / 5,
          child: Image.asset(
            ellipse,
          )),
      Positioned.fill(
          right: width / 1.5,
          top: height / 3,
          child: Image.asset(
            ellipse,
          )),
      Positioned.fill(
          child: Align(
        alignment: Alignment.bottomRight,
        child: SizedBox(
          child: Image.asset(
            ellipse,
          ),
        ),
      )),
    ],
  );
}
