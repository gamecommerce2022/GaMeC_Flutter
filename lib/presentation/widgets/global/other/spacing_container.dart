import 'package:flutter/material.dart';

addVerticalSpace(double height) {
  return SizedBox(height: height);
}

addHorizontalSpace(double width) {
  return SizedBox(width: width);
}

Widget emptySpace = const SizedBox.shrink();

colorContainer(
    {required Color color,
    double width = double.infinity,
    double height = double.infinity}) {
  return Container(
    width: width,
    height: height,
    color: color,
  );
}
