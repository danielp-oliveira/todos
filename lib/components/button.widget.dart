import 'package:flutter/material.dart';

class TDButton extends StatelessWidget {
  final String text;
  final String image;
  final Function callback;
  final double width;

  TDButton({
    @required this.text,
    @required this.callback,
    this.image,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
