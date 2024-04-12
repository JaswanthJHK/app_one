import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomeTexts extends StatelessWidget {
  final String data;
  double? size;
  Color? color;
  FontWeight? fw;
  TextAlign? txtalign;
  CustomeTexts(
      {required this.data,
      this.size,
      this.color,
      this.fw,
      this.txtalign,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
        fontSize: size,
        color: color,
        fontWeight: fw,
      ),
    );
  }
}
